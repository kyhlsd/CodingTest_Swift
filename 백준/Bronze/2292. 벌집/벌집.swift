let n = Int(readLine()!)!
var compare = 1
var count = 1
while n > compare {
    compare += 6 * count
    count += 1
}
print(count)