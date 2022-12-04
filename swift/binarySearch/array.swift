let arr = [1, 3, 3, 4, 5, 6, 7, 8]

// Swift implementation of Binary Search
func binarySearch(_ arr: [Int], _ target: Int) -> Int {
  var L = 0, R = arr.count - 1

  while L <= R {
    let mid = (L + R) / 2

    if target > arr[mid] {
      L = mid + 1
    } else if target < arr[mid] {
      R = mid - 1
    } else {
      return mid
    }
  }
  return -1
}