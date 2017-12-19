registers = [
        dict([r, 0] for r in list('abcdefghijklmnop')),
        dict([r, 0] for r in list('abcdefghijklmnop'))
        ]
registers[0]['p'] = 0
registers[1]['p'] = 1
registers[0]['ptr'] = 0
registers[1]['ptr'] = 0
sent = [[],[]]
cpu = 0
waiting = [False, False]
sentcnt = [0, 0]

def _set(c, x, y):
    #print "set %s %s %s" % (c, x, y)
    val = registers[c][y] if y in registers[c] else int(y)
    registers[c][x] = val

def _add(c, x, y):
    #print "add %s %s %s" % (c, x, y)
    val = registers[c][y] if y in registers[c] else int(y)
    registers[c][x] += val

def _mul(c, x, y):
    #print "mul %s %s %s" % (c, x, y)
    val = registers[c][y] if y in registers[c] else int(y)
    registers[c][x] *= val

def _mod(c, x, y):
    #print "mod %s %s %s" % (c, x, y)
    val = registers[c][y] if y in registers[c] else int(y)
    registers[c][x] %= val

def _snd(c, x):
    #print "snd %s %s" % (c, x)
    val = registers[c][x] if x in registers[c] else int(x)
    sent[c].insert(0, val)
    sentcnt[c] += 1
    toggle = 0 if c == 1 else 1
    waiting[toggle] = False
    print "%s, %s" %(len(sent[0]), len(sent[1]))

def _rcv(c, x):
    global cpu, waiting
    #print "rcv %s %s" % (c, x)
    toggle = 0 if c == 1 else 1
    if len(sent[toggle]) == 0:
        if waiting[toggle]:
            print sentcnt
            quit()
        waiting[cpu] = True
        cpu = toggle
        #print "CPU: %s" % cpu
        registers[c]['ptr'] -= 1
    else:
        registers[c][x] = sent[toggle].pop()
        print "%s, %s" %(len(sent[0]), len(sent[1]))
        #print '%s %s <= %s' % (c, x, registers[c][x])

def _jgz(c, x, y):
    #print "jgz %s %s %s" % (c, x, y)
    val1 = registers[c][x] if x in registers[c] else int(x)
    val2 = registers[c][y] if y in registers[c] else int(y)
    if val1 > 0:
        registers[c]['ptr'] += val2 - 1

instruction_map = {
        'snd': _snd,
        'set': _set,
        'add': _add,
        'mul': _mul,
        'mod': _mod,
        'rcv': _rcv,
        'jgz': _jgz,
        }

example = """
set a 1
add a 2
mul a a
mod a 5
snd a
set a 0
rcv a
jgz a -1
set a 1
jgz a -2
"""

input = """
set i 31
set a 1
mul p 17
jgz p p
mul a 2
add i -1
jgz i -2
add a -1
set i 127
set p 735
mul p 8505
mod p a
mul p 129749
add p 12345
mod p a
set b p
mod b 10000
snd b
add i -1
jgz i -9
jgz a 3
rcv b
jgz b -1
set f 0
set i 126
rcv a
rcv b
set p a
mul p -1
add p b
jgz p 4
snd a
set a b
jgz 1 3
snd b
set f 1
add i -1
jgz i -11
snd a
jgz f -16
jgz a -19
"""

input = input.strip().split("\n")
input = [line.split(' ') for line in input]
#print input

while True:
    instr = input[registers[cpu]['ptr']]
    registers[cpu]['ptr'] += 1
    instruction_map[instr[0]](cpu, *instr[1:])

