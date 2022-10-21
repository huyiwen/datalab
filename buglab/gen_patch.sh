#!/usr/bin/sh
echo $1.cpp
diff -dpNBb --unified=0 --suppress-common-lines buggy/$1.cpp fixed/$1.cpp
