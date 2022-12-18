// Brute Force - Time: O(2 ^ (n + m)), Space: O(n + m)
func bruteForce(_ r: Int, _ c: Int, _ rows: Int, _ cols: Int) -> Int {
  if r == rows || c == cols {
    return 0
  }
  if r == rows - 1 || c == cols - 1 {
    return 1
  }

  return (bruteForce(r + 1, c, rows, cols) + 
          bruteForce(r, c + 1, rows, cols))
}

// Memoization - Time and Space: O(n * m)
func memoization(_ r: Int, _ c: Int, _ rows: Int, _ cols: Int, _ cache: inout [[Int]]) -> Int {
  if r == rows || c == cols {
     return 0
  }
  if cache[r][c] > 0 {
     return cache[r][c]
  }
  if r == rows - 1 || c == cols - 1 {
     return 1
  }

  cache[r][c] = (memoization(r + 1, c, rows, cols, &cache) + 
                memoization(r, c + 1, rows, cols, &cache))
  return cache[r][c]
}

// Dyanmic Programming - Time: O(n * m), Space: O(m), where m is num of cols
func dp(_ rows: Int, _ cols: Int) -> Int {
  var prevRow = Array(repeating: 0, count: cols)

  for _ in stride(from: rows - 1, through: 0, by: -1) {
    var curRow = Array(repeating: 0, count: cols)
    curRow[cols - 1] = 1
    for c in stride(from: cols - 2, through: 0, by: -1) {
      curRow[c] = curRow[c + 1] + prevRow[c]
    }
    prevRow = curRow
  }
  return prevRow[0]
}