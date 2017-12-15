import Foundation

var count = 0
var prev = (65, 8921)
for _ in 0...40000000 {
    let method = method1
    prev = (method(prev.0 * 16807), method(prev.1 * 48271))
    if prev.0 & 0xffff == prev.1 & 0xffff { count += 1 }
}
print(count)
