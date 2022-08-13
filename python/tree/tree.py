class TreeNode:
    def __init__(self, val):
        self.val = val
        self.left = None
        self.right = None



root = insert(None, 2)
inorder(root)
insert(root, 1)
print()

inorder(root)
print()

insert(root, 3)
inorder(root)
print()

insert(root, 14)
inorder(root)
print()

insert(root, 5)
print("inorder")
inorder(root)
print()

print("preorder")
preorder(root)
print()

print("postorder")
postorder(root)
print()

bfs(root)

remove(root, 14)
print("inorder")
inorder(root)
print()
bfs(root)

root.left = TreeNode(1)
root.right = TreeNode(3)
root.right.right = TreeNode(4) 




# print(search(root, 1))
# print(search(root, 2))
# print(search(root, 3))
# print(search(root, 4))
# print(search(root, 5))
# print(search(root, 0))
# print(search(root, -1))