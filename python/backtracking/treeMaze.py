class TreeNode:
    def __init__(self, val):
        self.val = val
        self.left = None
        self.right = None

def canReachLeaf(root):
    if not root or root.val == 0:
        return False
    
    if not root.left and not root.right:
        return True
    if canReachLeaf(root.left):
        return True
    if canReachLeaf(root.right):
        return True
    return False

def leafPath(root, path):
    if not root or root.val == 0:
        return False
    path.append(root.val)

    if not root.left and not root.right:
        return True
    if leafPath(root.left, path):
        return True
    if leafPath(root.right, path):
        return True
    path.pop()
    return False



#    4
#  0   1
#   7 2 0 

root = TreeNode(4)
root.left = TreeNode(0)
root.left.right = TreeNode(7)
root.right = TreeNode(1)
root.right.left = TreeNode(2)
root.right.right = TreeNode(0)

print(canReachLeaf(root))
path = []
print(leafPath(root, path))
print(path)
