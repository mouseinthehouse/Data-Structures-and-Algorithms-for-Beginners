class ListNode {
  var val: Int
  var next: ListNode?
  var prev: ListNode?

  init(_ val: Int) {
    self.val = val
    self.next = nil
    self.prev = nil
  }
}

// Implementation for Doubly Linked List
class LinkedList {
  var head: ListNode?
  var tail: ListNode? 

  init() {
    // Init the list with a 'dummy' node which makes
    // removing a node from the beginning of list easier.
    head = ListNode(-1)
    tail = ListNode(-1)
    head?.next = tail
    tail?.prev = head
  }

  func insertFront(_ val: Int) {
    let newNode: ListNode? = ListNode(val)
    newNode?.prev = head
    newNode?.next = head?.next

    head!.next?.prev = newNode
    head?.next = newNode
  }

  func insertEnd(_ val: Int) {
    let newNode: ListNode? = ListNode(val)
    newNode?.next = tail
    newNode?.prev = tail?.prev

    tail!.prev?.next = newNode
    tail?.prev = newNode
  }

  // Remove first node after dummy head (assume it exists)
  func removeFront() {
    head!.next!.next?.prev = head
    head?.next = head!.next?.next
  }

  // Remove last node before dummy tail (assume it exists)
  func removeEnd() {
    tail!.prev!.prev?.next = tail
    tail?.prev = tail!.prev?.prev
  }

  func print() {
    var curr = head?.next
    while curr !== tail {
      Swift.print(String(curr!.val) + " -> ", terminator: "")
      curr = curr?.next
    }
    Swift.print()
  }
}