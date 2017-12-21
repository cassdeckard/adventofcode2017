skip = 314
zeroidx = 0
nextnum = 1

for i in range(50000000) :
    total = i + 1
    split = skip + 1
    if split > total : split %= total

    left = min(split, i + 1)
    right = i - left + 1

    if zeroidx < split:
        zeroidx += 1 + right
    else:
        zeroidx += 1 - left

    if zeroidx == i + 1:
        nextnum = zeroidx
        print nextnum

print '###'
