import pipe as p

for hexnum in "0xffffe3d6	0xffffe3dd".split():
    x = int(''.join(['0' if i == '1' else '1' for i in bin(int(hexnum, 16))[2:]] | p.skip_while(lambda x: x == '0')), 2)
    print(-x)

