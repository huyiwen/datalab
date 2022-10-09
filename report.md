# ICS Datalab Report

胡译文 2021201719

## Results

## Solutions

### bitXor

重点在于利用`&`和`~`表示`|`。`x^y = ~(x&y) & ~(~x & ~y)`

### thirdBits

一开始做的时候有一个歧义，每三位一个1的1从哪里开始。剩下的就是定义变量指数级复制。

### fitsShort

最暴力思路：判断除符号位、低15位以外有没有1（op数太多orz）
优化

### isTmax

### fitsBits

###