// Matrix (2D Grid)
let grid = [[0, 0, 0, 0],
            [1, 1, 0, 0],
            [0, 0, 0, 1],
            [0, 1, 0, 0]]

// Shortest path from top left to bottom right
func bfs(_ grid: [[Int]]) -> Int {
  let ROWS = grid.count, COLS = grid[0].count
  var visit = Array(repeating: Array(repeating: 0, count: COLS), count: ROWS)
  var queue: [(Int, Int)] = []
  queue.append((0, 0))
  visit[0][0] = 1
  
  var length = 0
  while queue.count > 0 {
    for _ in 0..<queue.count {
      let (r, c) = queue.removeFirst()
      if r == ROWS - 1 && c == COLS - 1 {
        return length
      }

      let neighbors = [[0, 1], [0, -1], [1, 0], [-1, 0]]
      for neighbor in neighbors {
        let dr = neighbor[0], dc = neighbor[1]
        if (min(r + dr, c + dc) < 0 || 
           r + dr == ROWS || c + dc == COLS ||
           visit[r + dr][c + dc] == 1 || grid[r + dr][c + dc] == 1) {
           continue
        }
        queue.append((r + dr, c + dc))
        visit[r + dr][c + dc] = 1
      }
    }
    length += 1
  }
  return length // This should never be called
}