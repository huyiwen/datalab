#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

team_t team = {
    /* Team name */
    "HU YIWEN",
    /* First member's full name */
    "HU YIWEN",
    /* First member's email address */
    "huyiwen@ruc.edu.cn",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

typedef struct rbtree_node {
    void *ptr;
    size_t size;
    int color;
    struct rbtree_node *parent;
    struct rbtree_node *left;
    struct rbtree_node *right;
} rbtree_node;

typedef struct rbtree {
    rbtree_node *root;
} rbtree;

static rbtree_node *rbtree_node_create(void *ptr, size_t size) {
    rbtree_node *node = (rbtree_node*) malloc(sizeof(rbtree_node));
    if (node == NULL) {
        return NULL;
    }
    node->ptr = ptr;
    node->size = size;
    node->color = 1;
    node->parent = NULL;
    node->left = NULL;
    node->right = NULL;
    return node;
}

static void rbtree_node_destroy(rbtree_node *node) {
    if (node != NULL) {
        free(node);
    }
}

static void rbtree_rotate_left(rbtree *tree, rbtree_node *node) {
    rbtree_node *right = node->right;
    node->right = right->left;
    if (right->left != NULL) {
        right->left->parent = node;
    }
    right->parent = node->parent;
    if (node->parent == NULL) {
        tree->root = right;
    } else if (node == node->parent->left) {
        node->parent->left = right;
    } else {
        node->parent->right = right;
    }
    right->left = node;
    node->parent = right;
}

static void rbtree_rotate_right(rbtree *tree, rbtree_node *node) {
    rbtree_node *left = node->left;
    node->left = left->right;
    if (left->right != NULL) {
        left->right->parent = node;
    }
    left->parent = node->parent;
    if (node->parent == NULL) {
        tree->root = left;
    } else if (node == node->parent->right) {
        node->parent->right = left;
    } else {
        node->parent->left = left;
    }
    left->right = node;
    node->parent = left;
}

static void rbtree_insert_fixup(rbtree *tree, rbtree_node *node) {
    while (node->parent != NULL && node->parent->color == 1) {
        if (node->parent == node->parent->parent->left) {
            rbtree_node *uncle = node->parent->parent->right;
            if (uncle != NULL && uncle->color == 1) {
                node->parent->color = 0;
                uncle->color = 0;
                node->parent->parent->color = 1;
                node = node->parent->parent;
            } else {
                if (node == node->parent->right) {
                    node = node->parent;
                    rbtree_rotate_left(tree, node);
                }
                node->parent->color = 0;
                node->parent->parent->color = 1;
                rbtree_rotate_right(tree, node->parent->parent);
            }
        } else {
            rbtree_node *uncle = node->parent->parent->left;
            if (uncle != NULL && uncle->color == 1) {
                node->parent->color = 0;
                uncle->color = 0;
                node->parent->parent->color = 1;
                node = node->parent->parent;
            } else {
                if (node == node->parent->left) {
                    node = node->parent;
                    rbtree_rotate_right(tree, node);
                }
                node->parent->color = 0;
                node->parent->parent->color = 1;
                rbtree_rotate_left(tree, node->parent->parent);
            }
        }
    }
    tree->root->color = 0;
}

static void rbtree_insert(rbtree *tree, rbtree_node *node) {
    rbtree_node *parent = NULL;
    rbtree_node *current = tree->root;
    while (current != NULL) {
        parent = current;
        if (node->ptr < current->ptr) {
            current = current->left;
        } else {
            current = current->right;
        }
    }
    node->parent = parent;
    if (parent == NULL) {
        tree->root = node;
    } else if (node->ptr < parent->ptr) {
        parent->left = node;
    } else {
        parent->right = node;
    }
    node->color = 1;
    rbtree_insert_fixup(tree, node);
}

static void rbtree_remove_fixup(rbtree *tree, rbtree_node *node, rbtree_node *parent, int is_left) {
    while (node != tree->root && (node == NULL || node->color == 0)) {
        rbtree_node *sibling;
        if (is_left) {
            sibling = parent->right;
            if (sibling->color == 1) {
                sibling->color = 0;
                parent->color = 1;
                rbtree_rotate_left(tree, parent);
                sibling = parent->right;
            }
            if ((sibling->left == NULL || sibling->left->color == 0) &&
                (sibling->right == NULL || sibling->right->color == 0)) {
                sibling->color = 1;
                node = parent;
                parent = node->parent;
                is_left = (parent != NULL && node == parent->left);
            } else {
                if (sibling->right == NULL || sibling->right->color == 0) {
                    sibling->left->color = 0;
                    sibling->color = 1;
                    rbtree_rotate_right(tree, sibling);
                    sibling = parent->right;
                }
                sibling->color = parent->color;
                parent->color = 0;
                sibling->right->color = 0;
                rbtree_rotate_left(tree, parent);
                node = tree->root;
                break;
            }
        } else {
            sibling = parent->left;
            if (sibling->color == 1) {
                sibling->color = 0;
                parent->color = 1;
                rbtree_rotate_right(tree, parent);
                sibling = parent->left;
            }
            if ((sibling->left == NULL || sibling->left->color == 0) &&
                (sibling->right == NULL || sibling->right->color == 0)) {
                sibling->color = 1;
                node = parent;
                parent = node->parent;
                is_left = (parent != NULL && node == parent->left);
            } else {
                if (sibling->left == NULL || sibling->left->color == 0) {
                    sibling->right->color = 0;
                    sibling->color = 1;
                    rbtree_rotate_left(tree, sibling);
                    sibling = parent->left;
                }
                sibling->color = parent->color;
                parent->color = 0;
                sibling->left->color = 0;
                rbtree_rotate_right(tree, parent);
                node = tree->root;
                break;
            }
        }
    }
    if (node != NULL) {
        node->color = 0;
    }
}

static void rbtree_remove(rbtree *tree, rbtree_node *node) {
    rbtree_node *parent;
    rbtree_node *child;
    int color;
    if (node->left == NULL) {
        child = node->right;
        parent = node->parent;
        color = node->color;
        if (child != NULL) {
            child->parent = parent;
        }
        if (parent == NULL) {
            tree->root = child;
        } else if (node == parent->left) {
            parent->left = child;
        } else {
            parent->right = child;
        }
        if (color == 0) {
            rbtree_remove_fixup(tree, child, parent, 0);
        }
        rbtree_node_destroy(node);
    } else if (node->right == NULL) {
        child = node->left;
        parent = node->parent;
        color = node->color;
        if (child != NULL) {
            child->parent        = parent;
        }
        if (parent == NULL) {
            tree->root = child;
        } else if (node == parent->left) {
            parent->left = child;
        } else {
            parent->right = child;
        }
        if (color == 0) {
            rbtree_remove_fixup(tree, child, parent, 1);
        }
        rbtree_node_destroy(node);
    } else {
        rbtree_node *successor = node->right;
        while (successor->left != NULL) {
            successor = successor->left;
        }
        rbtree_node *temp = successor->right;
        parent = successor->parent;
        color = successor->color;
        if (temp != NULL) {
            temp->parent = parent;
        }
        if (parent == node) {
            parent = successor;
        } else {
            if (successor->right != NULL) {
                successor->right->parent = successor->parent;
            }
            successor->parent->left = successor->right;
            successor->right = node->right;
            successor->right->parent = successor;
        }
        successor->parent = node->parent;
        successor->color = node->color;
        successor->left = node->left;
        successor->left->parent = successor;
        if (node == tree->root) {
            tree->root = successor;
        } else if (node == node->parent->left) {
            node->parent->left = successor;
        } else {
            node->parent->right = successor;
        }
        if (color == 0) {
            rbtree_remove_fixup(tree, temp, parent, 1);
        }
        rbtree_node_destroy(node);
    }
}

static rbtree g_rbtree = {0};

// Declare a global instance of the red-black tree
int mm_init(void)
{
    return 0;
}

// Implementation of malloc using the red-black tree
void *mm_malloc(size_t size) {
    void *ptr = NULL;
    rbtree_node *node = rbtree_node_create(NULL, size);
    if (node) {
        rbtree_insert(&g_rbtree, node);
        ptr = node->ptr;
    }
    return ptr;
}

// Implementation of free using the red-black tree
void mm_free(void *ptr) {
    if (ptr) {
        rbtree_node *node = (rbtree_node *)((uintptr_t)ptr - offsetof(rbtree_node, ptr));
        rbtree_remove(&g_rbtree, node);
        rbtree_node_destroy(node);
    }
}

// Implementation of realloc using the red-black tree
void *mm_realloc(void *ptr, size_t size) {
    void *new_ptr = NULL;
    if (ptr) {
        rbtree_node *node = (rbtree_node *)((uintptr_t)ptr - offsetof(rbtree_node, ptr));
        if (size == 0) {
            rbtree_remove(&g_rbtree, node);
            rbtree_node_destroy(node);
        } else {
            node->size = size;
            new_ptr = node->ptr;
        }
    } else {
        new_ptr = malloc(size);
    }
    return new_ptr;
}
