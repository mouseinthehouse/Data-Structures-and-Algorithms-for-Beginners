let names = ["alice", "brad", "collin", "brad", "dylan", "kim"]

var countMap = [String: Int]()
for name in names {
  // If countMap does not contain name
  if countMap[name] == nil {
    countMap[name] = 1
  }
  else {
    countMap[name]! += 1
  }
}
