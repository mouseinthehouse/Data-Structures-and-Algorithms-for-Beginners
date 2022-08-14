class Pair:
    def __init__(self, key, val):
        self.key = key
        self.val = val

class HashMap:
    def __init__(self):
        self.size = 0
        self.capacity = 2
        self.map = [None, None]
    
    def hash(self, key):
        index = 0
        for c in key:
            index += ord(c)
        return index % self.capacity

    def get(self, key):
        index = self.hash(key)
        
        while self.map[index] != None:
            if self.map[index].key == key:
                return self.map[index].val
            index += 1
            index = index % self.capacity
        return None

    def put(self, key, val):
        index = self.hash(key)

        while True:
            if self.map[index] == None:
                self.map[index] = Pair(key, val)
                self.size += 1
                if self.size >= self.capacity // 2:
                    self.rehash()
                return
            elif self.map[index].key == key:
                self.map[index].val = val
                return
            
            index += 1
            index = index % self.capacity
    
    # This remove is buggy, becaause if we remove, we create holes 
    # in array, then searching hashmap may return false even if a key exists
    # So don't mark the node as null, put some dummy there
    def remove(self, key):
        if not self.get(key):
            return
        
        index = self.hash(key)
        while True:
            if self.map[index].key == key:
                self.map[index] = None
                self.size -= 1
                return
            index += 1
            index = index % self.capacity

    def rehash(self):
        self.capacity = 2 * self.capacity
        newMap = []
        for i in range(self.capacity):
            newMap.append(None)

        oldMap = self.map
        self.map = newMap
        self.size = 0
        for pair in oldMap:
            if pair:
                self.put(pair.key, pair.val)
        

hashmap = HashMap()
hashmap.put("Alice", "NYC")
hashmap.put("Brad", "Chicago")
hashmap.put("Collin", "Seattle")

print(hashmap.get("Alice"))
print(hashmap.get("Brad"))
print(hashmap.get("Collin"))
print(hashmap.get("Daniel"))

hashmap.put("Collin", "Vancouver")
print(hashmap.get("Collin"))

for pair in hashmap.map:
    if pair:
        print(pair.key, pair.val)

hashmap.remove("Collin")
print("after remove collin")
for pair in hashmap.map:
    if pair:
        print(pair.key, pair.val)
hashmap.remove("Alice")
print("after remove alice")
for pair in hashmap.map:
    if pair:
        print(pair.key, pair.val)
hashmap.remove("Alice")
print("after remove alice")
for pair in hashmap.map:
    if pair:
        print(pair.key, pair.val)
hashmap.remove("Brad")
print("after remove brad")
for pair in hashmap.map:
    if pair:
        print(pair.key, pair.val)