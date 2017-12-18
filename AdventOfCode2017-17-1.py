buffer = [0]
skip = 314

for i in range(2017) :
    split = skip + 1 if skip < len(buffer) else (skip + 1) % len(buffer)
    # print split
    # print '> ' + str(buffer[:split])
    # print '< ' + str(buffer[split:])
    buffer = [i + 1] + buffer[split:] + buffer[:split]
    #print buffer
print buffer[0]
print buffer[1]
