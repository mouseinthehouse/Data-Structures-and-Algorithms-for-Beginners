from collections import deque
from insertAndRemove import insert

class TreeNode:
    def __init__(self, val):
        self.val = val
        self.left = None
        self.right = None

def bfs(root):
    queue = deque()

    if root:
        queue.append(root)
    
    level = 0
    while len(queue) > 0:
        print("level: ", level)
        for i in range(len(queue)):
            curr = queue.popleft()
            print(curr.val)
            if curr.left:
                queue.append(curr.left)
            if curr.right:
                queue.append(curr.right)
        level += 1

root = insert(None, 4)
insert(root, 7)
insert(root, 6)
insert(root, 1)
insert(root, 3)
insert(root, 10)
bfs(root)