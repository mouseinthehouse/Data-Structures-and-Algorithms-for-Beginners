func insertionSort(_ arr: [Int]) -> [Int] {
  // Swift treats parameters as constants
  var sortArray = arr
  
  // Traverse through 1 to count(arr) - 1
  for i in 0...sortArray.count - 1 {
    var j = i - 1
    while j >= 0 && sortArray[j + 1] < sortArray[j] {
      // arr[j] and arr[j + 1] are out of order so swap them
      let temp = sortArray[j + 1]
      sortArray[j + 1] = sortArray[j]
      sortArray[j] = temp
      j -= 1
    }
  }
  return sortArray
}