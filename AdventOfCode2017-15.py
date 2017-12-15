#!/usr/bin/env python

factors = (16807, 48271)

def nextPair(prev) : 
   a, b = prev 
   fa, fb = factors 
   a2 = (a * fa) % 0x7fffffff
   b2 = (b * fb) % 0x7fffffff
   while a2 % 4 != 0 :
       a2 = (a2 * fa) % 0x7fffffff
   while b2 % 8 != 0 :
       b2 = (b2 * fb) % 0x7fffffff
   return (a2, b2)

prev = (65, 8921)
prev = (289, 629)
count = 0
for i in range(5000000) : 
   if i % 1000000 == 0 : print ".",
   next = nextPair(prev)
   a, b = next
   if a & 0xffff == b & 0xffff : count += 1
   prev = next
print(count)
