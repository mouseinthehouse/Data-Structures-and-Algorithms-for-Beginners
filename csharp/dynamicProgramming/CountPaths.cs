using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NeetCodeTester.dynamicProgramming
{
    class CountPaths
    {

        // Brute Force - Time: O(2 ^ (n + m)), Space: O(n + m)
        public static int BruteForce(int r, int c, int rows, int cols)
        {
            if (r == rows || c == cols)
            {
                return 0;
            }
            if (r == rows - 1 && c == cols - 1)
            {
                return 1;
            }
            return (BruteForce(r + 1, c, rows, cols) +
                    BruteForce(r, c + 1, rows, cols));
        }

        // Memoization - Time and Space: O(n * m)
        public static int Memoization(int r, int c, int rows, int cols, int[][] cache)
        {
            if (r == rows || c == cols)
            {
                return 0;
            }
            if (cache[r][c] > 0)
            {
                return cache[r][c];
            }
            if (r == rows - 1 && c == cols - 1)
            {
                return 1;
            }
            cache[r][c] = (Memoization(r + 1, c, rows, cols, cache) +
                            Memoization(r, c + 1, rows, cols, cache));
            return cache[r][c];
        }

        // Dynamic Programming - Time: O(n * m), Space: O(m), where m is num of cols
        public static int Dp(int rows, int cols)
        {
            int[] prevRow = new int[cols];

            for (int i = rows - 1; i >= 0; i--)
            {
                int[] curRow = new int[cols];
                curRow[cols - 1] = 1;
                for (int j = cols - 2; j >= 0; j--)
                {
                    curRow[j] = curRow[j + 1] + prevRow[j];
                }
                prevRow = curRow;
            }
            return prevRow[0];
        }
    }
}

 