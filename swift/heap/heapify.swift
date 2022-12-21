// Min Heap
class Heap {
  var heap = [0]
  // ... not showing push, pop to save space

  func heapify(_ arr: inout [Int]) {
    // 0-th position is moved to the end
    arr.append(arr[0])

    heap = arr
    var cur = (heap.count - 1) / 2
    while cur > 0 {
      // Percolate down
      var i = cur
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
      cur -= 1
    }
  }
}