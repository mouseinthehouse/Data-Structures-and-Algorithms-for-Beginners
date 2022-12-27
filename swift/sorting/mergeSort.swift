// Implementation of MergeSort
func mergeSort(_ arr: inout [Int], _ s: Int, _ e: Int) -> [Int] {
  if e - s + 1 <= 1 {
    return arr
  }

  // The middle index of the array
  let m = (s + e) / 2

  // Sort the left half
  mergeSort(&arr, s, m)

  // Sort the right half
  mergeSort(&arr, m + 1, e)

  // Merge sorted halfs
  merge(&arr, s, m, e)

  return arr
}

// Merge in-place
func merge(_ arr: inout [Int], _ s: Int, _ m: Int, _ e: Int) {

  // Find lengths of two subarrays to be merged
  let length1 = m - s + 1
  let length2 = e - m

  // Create temp arrays
  var L = Array(repeating: 0, count: length1)
  var R = Array(repeating: 0, count: length2)
  
  // Copy the sorted left & right halfs to temp arrays
  for i in 0..<length1 {
    L[i] = arr[s + i]
  }
  for j in 0..<length2 {
    R[j] = arr[m + 1 + j]
  }

  var i = 0 // index for L
  var j = 0 // index for R
  var k = s // index for arr

  // Merge the two sorted halfs into the original array
  while i < L.count && j < R.count {
    if L[i] <= R[j] {
      arr[k] = L[i]
      i += 1
    }
    else {
      arr[k] = R[j]
      j += 1
    }
    k += 1
  }
  
  // One of the halfs will have elements remaining
  while i < L.count {
    arr[k] = L[i]
    i += 1
    k += 1
  }
  while j < R.count {
    arr[k] = R[j]
    j += 1
    k += 1
  }
}