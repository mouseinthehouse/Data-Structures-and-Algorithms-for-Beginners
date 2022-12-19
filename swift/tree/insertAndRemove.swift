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

// Insert a new node and return the root of the BST
func insert(_ root: TreeNode?, _ val: Int) -> TreeNode? {
  if root == nil {
    return TreeNode(val)
  }

  if val > root!.val {
    root?.right = insert(root?.right, val)
  }
  else if val < root!.val {
    root?.left = insert(root?.left, val)
  }
  return root
}

// Return the minimum value node of the BST
func minValueNode(_ root: TreeNode?) -> TreeNode? {
  var curr = root
  while curr != nil && curr?.left != nil {
    curr = curr?.left
  }
  return curr
}

// Remove a node and return the root of the BST
func remove(_ root: TreeNode?, _ val: Int) -> TreeNode? {
  if root == nil {
    return TreeNode(val)
  }

  if val > root!.val {
    root?.right = remove(root?.right, val)
  }
  else if val < root!.val {
    root?.left = remove(root?.left, val)
  }
  else {
    if root?.left == nil {
      return root?.right
    }
    else if root?.right == nil {
      return root?.left
    }
    else {
      let minNode = minValueNode(root?.right)
      root?.val = minNode!.val
      root?.right = remove(root?.right, minNode!.val)
    }
  }
  return root
}