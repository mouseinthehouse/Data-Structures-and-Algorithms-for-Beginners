#include <iostream>
#include <unordered_map>

using std::cout;
using std::endl;
using std::unordered_map;

// Brute Force
int bruteForce(int n) {
    if (n <= 1) {
        return n;
    }
    return bruteForce(n - 1) + bruteForce(n - 2);
}

// Memoization
int memoization(int n, unordered_map<int, int> *cache) {
    if (n <= 1) {
        return n;
    }
    if (cache->count(n)) {
        return (*cache)[n];
    }
    return memoization(n - 1, cache) + memoization(n - 2, cache);
}

// Dynamic Programming
int dp(int n) {
    if (n < 2) {
        return n;
    }

    int dp[] = {0, 1};
    int i = 2;
    while (i <= n) {
        int tmp = dp[1];
        dp[1] = dp[0] + dp[1];
        dp[0] = tmp;
        i++;
    }
    return dp[1];
}

int main() {
    // F(0) = 0
    // F(1) = 1
    // F(2) = 1
    // F(3) = 2
    // F(4) = 3
    // F(5) = 5
    cout << bruteForce(5) << endl;
    cout << memoization(5, new unordered_map<int, int>()) << endl;
    cout << dp(5) << endl;
    return 0;
}