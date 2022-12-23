// GraphNode used for adjacency list
class GraphNode {
  var val: String
  var neighbors: [String]

  init(_ val: String) {
    self.val = val
    neighbors = []
  }
}

// Or use a Hashmap
let adjList = ["A": [], "B": []]

// Given directed edges, build an adjacency list
func buildAdjList() -> [String: [String]] {
  let edges = [["A", "B"], ["B", "C"], ["B", "E"], ["C", "E"], ["E", "D"]]
  var adjList = [String: [String]]()
  
  for edge in edges {
    let src = edge[0], dst = edge[1]
    if adjList[src] == nil {
      adjList[src] = []
    }
    if adjList[dst] == nil {
      adjList[dst] = []
    }
    adjList[src]!.append(dst)
  }
  return adjList
}

// Count paths (backtracking)
func dfs(_ node: String, _ target: String, _ adjList: [String: [String]], _ visit: inout Set<String>) -> Int {
  if visit.contains(node) {
    return 0
  }
  if node == target {
    return 1
  }

  var count = 0
  visit.insert(node)
  for neighbor in adjList[node]! {
    count += dfs(neighbor, target, adjList, &visit)
  }
  visit.remove(node)
  return count
}

// Shortest path from node to target
func bfs(_ node: String, _ target: String, _ adjList: [String: [String]]) -> Int {
  var length = 0
  var visit = Set<String>()
  visit.insert(node)
  var queue: [String] = []
  queue.append(node)

  while queue.count > 0 {
    for _ in 0..<queue.count {
      let curr = queue.removeFirst()
      if curr == target {
        return length
      }

      for neighbor in adjList[curr]! {
        if !visit.contains(neighbor) {
          visit.insert(neighbor)
          queue.append(neighbor)
        }
      }
    }
    length += 1
  }
  return length
}