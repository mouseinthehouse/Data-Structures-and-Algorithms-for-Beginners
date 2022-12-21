// Min Heap
class Heap {
  var heap = [0]

  func push(_ val: Int) {
    heap.append(val)
    var i = heap.count - 1

    // Percolate up
    while i > 1 && heap[i] < heap[i / 2] {
      let tmp = heap[i]
      heap[i] = heap[i / 2]
      heap[i / 2] = tmp
      i = i / 2
    }
  }

  func pop() -> Int {
    if heap.count == 1 {
      // Normally we would throw an exception if heap is empty.
      return -1
    }
    if heap.count == 2 {
      return heap.removeLast()
    }

    let res = heap[1]
    // Move last value to root
    heap[1] = heap.removeLast()
    var i = 1
    // Percolate down
    while 2 * i < heap.count {
      if (2 * i + 1 < heap.count && 
          heap[2 * i + 1] < heap[2 * i] && 
          heap[i] > heap[2 * i + 1]) {
        // Swap right child 
        let tmp = heap[i]
        heap[i] = heap[2 * i + 1]
        heap[2 * i + 1] = tmp
        i = 2 * i + 1
      }
      else if heap[i] > heap[2 * i] {
        // Swap left child
        let tmp = heap[i]
        heap[i] = heap[2 * i]
        heap[2 * i] = tmp
        i = 2 * i
      }
      else {
        break
      }
    }
    return res
  }

  func top() -> Int {
    if heap.count > 1 {
      return heap[1]
    }
    // Normally we would throw an exception if heap is empty.
    return -1
  }
}