programs = [chr(i) for i in range(ord('a'), ord('q'))]

def spin(programs, idx):
  print(idx)
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
moves = [(m[0], m[1].split('/')) for m in moves]

for move in moves:
  print programs
  programs = move_map[move[0]](programs, *move[1])

print programs
