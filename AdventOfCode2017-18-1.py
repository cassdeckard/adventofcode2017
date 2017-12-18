registers = dict([r, 0] for r in list('abcdefghijklmnop'))
ptr = 0

def _set(x, y):
    print "set %s %s" % (x, y)
    val = registers[y] if y in registers else int(y)
    registers[x] = val

def _add(x, y):
    print "add %s %s" % (x, y)
    val = registers[y] if y in registers else int(y)
    registers[x] += val

def _mul(x, y):
    print "mul %s %s" % (x, y)
    val = registers[y] if y in registers else int(y)
    registers[x] *= val

def _mod(x, y):
    print "mod %s %s" % (x, y)
    val = registers[y] if y in registers else int(y)
    registers[x] %= val

def _snd(x):
    print "snd %s" % (x)
    registers['snd'] = registers[x]

def _rcv(x):
    print "rcv %s" % (x)
    if registers[x] != 0:
        print registers['snd']
        quit()

def _jgz(x, y):
    global ptr
    print "jgz %s %s" % (x, y)
    if registers[x] > 0:
        ptr += int(y) - 1

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
print input

while True:
    instr = input[ptr]
    ptr += 1
    instruction_map[instr[0]](*instr[1:])

