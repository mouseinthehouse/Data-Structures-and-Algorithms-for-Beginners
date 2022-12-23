// Matrix (2D Grid)
let grid = [[0, 0, 0, 0],
            [1, 1, 0, 0],
            [0, 0, 0, 1],
            [0, 1, 0, 0]]

// Adjacency matrix
let adjMatrix = [[0, 0, 0, 0],
                 [1, 1, 0, 0],
                 [0, 0, 0, 1],
                 [0, 1, 0, 0]]

// GraphNode used for adjacency list
class GraphNode {
  var val: Int
  var neighbors: [Int]

  init(_ val: Int) {
    this.val = val
    neighbors = []
  }
}