before = 0
after = 0
skip = 3
zeropos = 0

buffer = [0]

for i in range(10) :
    total = len(buffer)
    split = skip + 1
    if split > total : split %= total

    zeroshift = min(split, i + 1)
    zeropos += zeroshift
    zeropos %= total
    #print zeropos

    assert zeroshift == len(buffer[:split])
    print str(buffer) + ' -> '
    print i + 1,
    print buffer[split:],
    print buffer[:split]
    print

    buffer = [i + 1] + buffer[split:] + buffer[:split]
    #print buffer

print '###'
print buffer[1]
