// Matrix (2D Grid)
grid = [[0, 0, 0, 0],
        [1, 1, 0, 0],
        [0, 0, 0, 1],
        [0, 1, 0, 0]]

// Count paths (backtracking)
// In Swift, it's easier to use a 2D array for visit rather than a hashset.
func dfs(_ grid: [[Int]], _ r: Int, _ c: Int, _ visit: inout [[Int]]) -> Int {
  let ROWS = grid.count, COLS = grid[0].count
  if (min(r, c) < 0 || 
      r == ROWS || c == COLS || 
      visit[r][c] == 1 || grid[r][c] == 1) {
    return 0
  }
  if r == ROWS - 1 && c == COLS - 1 {
    return 1
  }
  
  visit[r][c] = 1

  var count = 0
  count += dfs(grid, r + 1, c, &visit)
  count += dfs(grid, r - 1, c, &visit)
  count += dfs(grid, r, c + 1, &visit)
  count += dfs(grid, r, c - 1, &visit)

  visit[r][c] = 0
  return count
}