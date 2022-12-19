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

func inorder(_ root: TreeNode?) {
  if root == nil {
    return
  }
  inorder(root?.left)
  print(root!.val)
  inorder(root?.right)
}

func preorder(_ root: TreeNode?) {
  if root == nil {
    return
  }
  print(root!.val)
  preorder(root?.left)
  preorder(root?.right)
}

func postorder(_ root: TreeNode?) {
  if root == nil {
    return
  }
  postorder(root?.left)
  postorder(root?.right)
  print(root!.val)
}