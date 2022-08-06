class ListNode:
    def __init__(self, val):
        self.val = val
        self.next = None

class Queue:
    def __init__(self):
        self.left = self.right = None
    
    def enqueue(self, val):
        newNode = ListNode(val)

        # Queue is non-empty
        if self.right:
            self.right.next = newNode
            self.right = self.right.next
        # Queue is empty
        else:
            self.left = self.right = newNode

    def dequeue(self):
        # Queue is empty
        if not self.left:
            return None
        
        # Remove left node and return value
        val = self.left.val
        self.left = self.left.next
        return val

    def print(self):
        cur = self.left
        while cur:
            print(cur.val, ' -> ', end ="")
            cur = cur.next
        print() # new line

q = Queue()

q.enqueue(1)  # 1  ->
q.enqueue(2)  # 1  -> 2  ->

q.dequeue()   # 2  ->

q.enqueue(3)  # 2  -> 3 ->
q.enqueue(4)  # 2  -> 3 -> 4 ->
 
q.dequeue()   # 2  -> 3 ->
q.dequeue()   # 2  ->
