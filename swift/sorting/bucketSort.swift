func bucketSort(_ arr: [Int]) -> [Int] {
  // Swift treats parameters as constants
  var sortedArray = arr
  
  // Assuming arr only contains 0, 1, or 2
  var counts = [0, 0, 0]

  // Count the quantity of each val in arr
  for n in sortedArray {
    counts[n] += 1
  }

  // Fill each bucket in the original array
  var i = 0
  for n in 0...counts.count - 1 {
    for j in 0...counts[n] - 1 {
      sortedArray[i] = n
      i += 1
    }
  }
  return sortedArray
}