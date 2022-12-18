// Brute Force
func bruteForce(_ n: Int) -> Int {
  if n <= 1 {
    return n
  }
  return bruteForce(n - 1) + bruteForce(n - 2)
}

// Memoization
func memoization(_ n: Int, _ cache: inout [Int]) -> Int {
  if n <= 1 {
    return n
  }
  if cache[n] != 0 {
    return cache[n]
  }

  cache[n] = memoization(n - 1, &cache) + memoization(n - 2, &cache)
  return cache[n]
}

// Dynamic Programming
func dp(_ n: Int) -> Int {
  if n < 2 {
    return n
  }

  var dp = [0, 1]
  var i = 2
  while i <= n {
    let tmp = dp[1]
    dp[1] = dp[0] + dp[1]
    dp[0] = tmp
    i += 1
  }
  return dp[1]
}