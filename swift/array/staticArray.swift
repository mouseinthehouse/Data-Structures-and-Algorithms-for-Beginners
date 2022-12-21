// Insert n into arr at the next open position.
// Length is the number of 'real' values in arr, and capacity
// is the size (aka memory allocated for the fixed size array).
func insertEnd(_ arr: inout [Int], _ n: Int, _ length: Int, _ capacity: Int) {
  if length < capacity {
    arr[length] = n
  }
}

// Remove from the last position in the array if the array 
// is not empty (i.e. length is non-zero).
func removeEnd(_ arr: inout [Int], _ length: Int) {
  if length > 0 {
    // Overwrite last element with some default value
    // We would also consider the length to be decreased by 1
    arr[length - 1] = 0
  }
}

// Insert n into index i after shifting elements to the right.
// Assuming i is a valid index and arr is not full
func insertMiddle(_ arr: inout [Int], _ i: Int, _ n: Int, _ length: Int) {
  // Shift starting from the end to i
  for index in stride(from: length - 1, through: i, by: -1) {
    arr[index + 1] = arr[index]
  }

  // Insert at i
  arr[i] = n
}

// Remove value at index i before shifting elements to the left.
// Assuming i is a valid index
func removeMiddle(_ arr: inout [Int], _ i: Int, _ length: Int) {
  // Shift starting from i + 1 to end
  for index in i + 1..<length {
    arr[index - 1] = arr[index]
  }
  // No need to 'remove' arr[i] since we already shifted
}

func printArr(_ arr: [Int], _ capacity: Int) {
  for i in 0..<capacity {
    print(arr[i], terminator: " ")
  }
  print()
}