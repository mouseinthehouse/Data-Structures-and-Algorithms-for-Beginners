class ListNode {
  var val: Int
  var next: ListNode?

  init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Queue {
  // Implementing this with dummy nodes would be easier!
  var left: ListNode? = nil
  var right: ListNode? = nil

  func enqueue(_ val: Int) {
    let newNode = ListNode(val)

    // Queue is non-empty
    if right != nil {
      right?.next = newNode
      right = right?.next
    }
    // Queue is empty
    else {
      left = newNode
      right = newNode
    }
  }

  func dequeue() -> Int {
    // Queue is empty
    if left == nil {
      return -1 // Better to throw an exception
    }

    // Remove left node and return value
    let val = left!.val
    left = left?.next
    if left == nil {
      right = nil
    }
    return val
  }

  func print() {
    var cur = left
    while cur != nil {
      Swift.print(String(cur!.val) + " -> ", terminator: "")
      cur = cur?.next
    }
    Swift.print()
  }
}