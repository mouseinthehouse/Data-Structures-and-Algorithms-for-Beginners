class Stack:
    def __init__(self):
        self.stack = []

    def push(self, n):
        self.stack.append(n)

    def pop(self):
        return self.stack.pop()

stack = Stack()  # []

stack.push(1)  # [1]
stack.push(2)  # [1, 2]
stack.push(3)  # [1, 2, 3]

stack.pop()  # [1, 2]
stack.pop()  # [1]
stack.pop()  # []