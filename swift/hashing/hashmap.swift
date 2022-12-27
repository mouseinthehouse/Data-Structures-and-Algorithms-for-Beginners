class Pair {
  var key: String
  var val: String

  init(_ key: String, _ val: String) {
    self.key = key
    self.val = val
  }
}

class HashMap {
  var size = 0
  var capacity = 2
  var map: [Pair?] = [nil, nil]
  
  func hash(_ key: String) -> Int {
    var index = 0
    for c in key {
      index += Int(c.asciiValue!)
    }
    return index % capacity
  }

  func get(_ key: String) -> String? {
    var index = hash(key)

    while map[index] != nil {
      if map[index]?.key == key {
        return map[index]?.val
      }
      index += 1
      index = index % capacity
    }
    return nil
  }

  func put(_ key: String, _ val: String) {
    var index = hash(key)

    while true {
      if map[index] == nil {
        map[index] = Pair(key, val)
        size += 1
        if size >= capacity / 2 {
          rehash()
        }
        return
      }
      else if map[index]?.key == key {
        map[index]?.val = val
        return
      }
      index += 1
      index = index % capacity
    }
  }

  func remove(_ key: String) {
    if get(key) == nil {
      return
    }

    var index = hash(key)
    while true {
      if map[index]?.key == key {
        // Removing an element using open-addressing actually causes a bug,
        // because we may create a hole in the list, and our get() may
        // stop searching early when it reaches this hole
        map[index] = nil
        size -= 1
        return
      }
      index += 1
      index = index % capacity
    }
  }

  func rehash() {
    capacity = 2 * capacity
    var newMap: [Pair?] = []
    for _ in 0..<capacity {
      newMap.append(nil)
    }

    let oldMap = map
    map = newMap
    size = 0
    for pair in oldMap {
      if pair != nil {
        put(pair!.key, pair!.val)
      }
    }
  }

  func print() {
    for pair in map {
      if pair != nil {
        Swift.print(pair!.key + " " + pair!.val)
      }
    }
  }
}