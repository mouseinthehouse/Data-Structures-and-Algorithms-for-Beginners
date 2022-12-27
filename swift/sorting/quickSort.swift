// Implementation of QuickSort
func quickSort(_ arr: inout [Int], _ s: Int, _ e: Int) -> [Int] {
  if e - s + 1 <= 1 {
    return arr
  }

  let pivot = arr[e]
  var left = s // pointer for left side 

  // Partition: elements smaller than pivot on left side
  for i in s...e - 1 {
    if arr[i] < pivot {
      let tmp = arr[left]
      arr[left] = arr[i]
      arr[i] = tmp
      left += 1
    }
  }

  // Move pivot in-between left & right sides
  arr[e] = arr[left]
  arr[left] = pivot

  // Quick sort left side
  quickSort(&arr, s, left - 1)

  // Quick sort right side
  quickSort(&arr, left + 1, e)

  return arr
}