// low = 1, high = 100

// Binary search on some range of values
func binarySearch(_ low: Int, _ high: Int) -> Int {
  // Swift treats parameters as constants
  var currLow = low, currHigh = high

  while currLow <= currHigh {
    let mid = (currLow + currHigh) / 2

    if isCorrect(mid) > 0 {
      currHigh = mid - 1
    } else if isCorrect(mid) < 0 {
      currLow = mid + 1
    } else {
      return mid
    }
  }
  return -1
}

// Return 1 if n is too big, -1 if too small, 0 if correct
func isCorrect(_ n: Int) -> Int {
  if n > 10 {
    return 1
  } else if n < 10 {
    return -1
  } else {
    return 0
  }
}