programs = list('abcdefghijklmnop')

def spin(programs, idx):
  idx = int(idx)
  slice_idx = len(programs) - idx
  return programs[slice_idx:] + programs [:slice_idx]

def exchange(programs, i, j):
  (i, j) = (int(i), int(j))
  temp = programs[i]
  programs[i] = programs[j]
  programs[j] = temp
  return programs

def partner(programs,a,b):
  idx_a = programs.index(a)
  idx_b = programs.index(b)
  programs[idx_a] = b
  programs[idx_b] = a
  return programs

move_map = { 's' : spin, 'x' : exchange, 'p' : partner }

move_file = open('input-16.txt', 'r')
moves = move_file.read()
moves = moves.split(',')
moves = [(m[0], m[1:]) for m in moves]
moves = [(move_map[m[0]], m[1].split('/')) for m in moves]

#initial_states = { ''.join(programs) : 0 }

get_ready = False
# after 44 iterations of the full list of dance moves, the program state is the
# same as it would be after 1
for i in range(1000000000 % 44):
  print '. ',
  for move in moves:
    (f, args) = move
    programs = f(programs, *args)
  #programs_string = ''.join(programs)
  #if programs_string in initial_states :
  #  pass
  #else :
  #  initial_states[''.join(programs)] = i

print ''.join(programs)
