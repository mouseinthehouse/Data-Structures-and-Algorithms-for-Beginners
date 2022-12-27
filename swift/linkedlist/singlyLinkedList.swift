class ListNode {
  var val: Int
  var next: ListNode?

  init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

// Implementation for Singly Linked List
class LinkedList {
  var head: ListNode?
  var tail: ListNode?

  init() {
    // Init the list with a 'dummy' node which makes
    // removing a node from the beginning of list easier
    head = ListNode(-1)
    tail = head
  }

  func insertEnd(_ val: Int) {
    tail?.next = ListNode(val)
    tail = tail?.next
  }

  func remove(_ index: Int) {
    var i = 0
    var curr = head
    while i < index && curr != nil {
      i += 1
      curr = curr?.next
    }

    // Remove the node ahead of curr
    if curr != nil && curr?.next != nil {
      if curr?.next === tail {
        tail = curr
      }
      curr?.next = curr!.next?.next
    }
  }

  func print() {
    var curr = head?.next
    while curr != nil {
      Swift.print(String(curr!.val) + " -> ", terminator: "")
      curr = curr?.next
    }
    Swift.print()
  }
}