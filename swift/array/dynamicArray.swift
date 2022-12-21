// Swift arrays are dynamic when using 'var' to declare the array, but this is an example of resizing 
class Array {
  var capacity = 2
  var length = 0
  var arr = Swift.Array(repeating: 0, count: 2) // Array of capacity = 2

  // Insert n in the last position of the array
  func pushback(_ n: Int) {
    if length == capacity {
      resize()
    }
    arr[length] = n
    length += 1
  }

  func resize() {
    // Create new array of double capacity
    capacity = 2 * capacity
    var newArr = Swift.Array(repeating: 0, count: capacity)

    // Copy elements to newArr
    for i in 0..<length {
      newArr[i] = arr[i]
    }
    arr = newArr
  }

  // Remove the last element in the array 
  func popback() {
    if length > 0 {
      length -= 1
    }
  }

  // Get value at i-th index
  func get(_ i: Int) -> Int {
    if i < length {
      return arr[i]
    }
    // Here we would throw an out of bounds exception
    return -1
  }

  // Insert n at i-th index
  func insert(_ i: Int, _ n: Int) {
    if i < length {
      arr[i] = n
      return
    }
    // Here we would throw an out of bounds exception
  } 

  func print() {
    for i in 0..<length {
      Swift.print(arr[i], terminator: " ")
    }
    Swift.print()
  }
}