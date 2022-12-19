class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?

  init(_ val: Int) {
    self.val = val
    left = nil
    right = nil
  }
}

func bfs(_ root: TreeNode?) {
  var queue: [TreeNode?] = []

  if root != nil {
    queue.append(root)
  }
  var level = 0
  while queue.count > 0 {
    print("level: " + String(level))
    for _ in 0...queue.count - 1 {
      let curr = queue.removeFirst()
      print(curr!.val)
      if curr?.left != nil {
        queue.append(curr?.left)
      }
      if curr?.right != nil {
        queue.append(curr?.right)
      }
    }
    level += 1
  }
}