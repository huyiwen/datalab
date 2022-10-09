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

优化：

### isTmax

本题关键在于探索 `Tmax` 的性质：1. `Tmax+1==Tmin` 2. `~Tmax==Tmin`。但同时拥有这个性质的还有 `-1` （观察可以发现两者仅符号位不同）。

一开始利用同时利用两个性质再排除 `x+1==0` 情况：`(!( x ^ y ^ ~(!x))) & (!!y)`
同时还实验了好几个思路：`!((y+x)^(~(!y)))`，`!(~(y+x+!y))`）

优化思路时发现 `Tmax+1` 的性质：`(Tmax+1) * 2 == 0`，遂变成：`!((y+y) | (!y))`。

### fitsBits

### upperBits

### anyOddBit

### byteSwap

### absVal



