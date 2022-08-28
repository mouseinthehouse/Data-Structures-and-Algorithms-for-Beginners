#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::vector;

// Brute Force - Time: O(2 ^ (n + m)), Space: O(n + m)
int bruteForce(int r, int c, int rows, int cols) {
    if (r == rows or c == cols) {
        return 0;
    }
    if (r == rows - 1 or c == cols - 1) {
        return 1;
    }
    return bruteForce(r + 1, c, rows, cols) +
        bruteForce(r, c + 1, rows, cols);
}

// Memoization - Time and Space: O(n * m)
int memoization(int r, int c, int rows, int cols, vector<vector<int>>& cache) {
    if (r == rows or c == cols) {
        return 0;
    }
    if (cache[r][c] > 0) {
        return cache[r][c];
    }
    if (r == rows - 1 or c == cols - 1) {
        return 1;
    }
    cache[r][c] = memoization(r + 1, c, rows, cols, cache) +  
        memoization(r, c + 1, rows, cols, cache);
    return cache[r][c];
}

// Dynamic Programming - Time: O(n * m), Space: O(m), where m is num of cols
int dp(int rows, int cols) {
    int *prevRow = new int[cols]();

    for (int r = rows - 1; r >= 0; r--) {
        int* curRow = new int[cols]();
        curRow[cols - 1] = 1;
        for (int c = cols - 2; c >= 0; c--) {
            curRow[c] = curRow[c + 1] + prevRow[c];
        }
        prevRow = curRow;
    }
    return prevRow[0];
}

int main() {
    // F(0) = 0
    // F(1) = 1
    // F(2) = 1
    // F(3) = 2
    // F(4) = 3
    // F(5) = 5
    cout << bruteForce(0, 0, 4, 4) << endl;
    vector<vector<int>> cache(4, vector<int>(4));
    //int **cache = new int [4][4]();
    // for (int i = 0; i < 4; i++) {
    //     for (int j = 0; i < 4; j++) {
    //         cache[i][j] = 0;
    //     }
    // }
    cout << memoization(0, 0, 4, 4, cache) << endl;
    cout << dp(4, 4) << endl;
    return 0;
}