class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?

  init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

func canReachLeaf(_ root: TreeNode?) -> Bool {
  if root == nil || root?.val == 0 {
    return false
  }
  if root?.left == nil && root?.right == nil {
    return true
  }
  if canReachLeaf(root?.left) {
    return true
  }
  if canReachLeaf(root?.right) {
    return true
  }
  return false
}

func leafPath(_ root: TreeNode?, _ path: inout [Int]) -> Bool {
  if root == nil || root?.val == 0 {
    return false
  }
  path.append(root!.val)

  if root?.left == nil && root?.right == nil {
    return true
  }
  if leafPath(root?.left, &path) {
    return true
  }
  if leafPath(root?.right, &path) {
    return true
  }
  path.removeLast()
  return false
}