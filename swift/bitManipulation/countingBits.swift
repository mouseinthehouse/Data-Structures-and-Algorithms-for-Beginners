// AND
var n = 1 & 1

// OR
n = 1 | 0

// XOR
n = 0 ^ 1

// NOT (negation)
n = ~n

// Bit shifting
n = 1
n = n << 1
n = n >> 1

// Counting bits
func countBits(_ n: Int) -> Int {
  var currBit = n   // Swift treats parameters as constants
  var count = 0
  while currBit > 0 { 
    if currBit & 1 == 1 {
      count += 1
    }
    currBit = currBit >> 1 // same as currBit / 2
  }
  return count
}