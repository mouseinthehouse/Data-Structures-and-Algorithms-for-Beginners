# Python arrays are dynamic by default, but this is an example of resizing.
class Array:
    def __init__(self):
        self.capacity = 2
        self.length = 0
        self.arr = [0] * 2 # Array of capacity = 2

    # Insert n in the last position of the array
    def pushback(self, n):
        if self.length == self.capacity:
            self.resize()
            
        # insert at next empty position
        self.arr[self.length] = n
        self.length += 1

    def resize(self):
        # Create new array of double capacity
        self.capacity = 2 * self.capacity
        newArr = [0] * self.capacity 
        
        # Copy elements to newArr
        for i in range(self.length):
            newArr[i] = self.arr[i]
        self.arr = newArr
        
    # Remove the last element in the array
    def popback(self):
        if self.length > 0:
            self.length -= 1
    
    # Get value at i-th index
    def get(self, i):
        if i < self.length:
            return self.arr[i]
        # Here we would throw an out of bounds exception

    # Insert n at i-th index
    def insert(self, i, n):
        if i < self.length:
            self.arr[i] = n
            return
        # Here we would throw an out of bounds exception       

    def print(self):
        for i in range(self.length):
            print(self.arr[i])
        print()

myArray = Array()

# Add elements
myArray.pushback(1)
myArray.pushback(3)
myArray.pushback(5)
# [1, 3, 5]
myArray.print()

# Add elements
myArray.pushback(7)
myArray.pushback(8)
myArray.pushback(9)
# [1, 3, 5, 7, 8, 9]
myArray.print()

# Remove elements
myArray.popback()
myArray.popback()
myArray.popback()
# [1, 3, 5]
myArray.print()

# Remove elements
myArray.popback()
myArray.popback()
myArray.popback()
# []
myArray.print()

# Try to remove but nothing is left
myArray.popback()
myArray.popback()
# []
myArray.print()