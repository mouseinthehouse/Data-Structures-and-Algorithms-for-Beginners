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

func search(_ root: TreeNode?, _ target: Int) -> Bool {
  if root == nil {
    return false
  }

  if target > root!.val {
    return search(root?.right, target)
  }
  else if target < root!.val {
    return search(root?.left, target)
  }
  else {
    return true
  }
}