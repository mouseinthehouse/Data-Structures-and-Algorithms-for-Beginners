     public class MatrixDFS
    {
        //Matrix (2D Grid)
        int[,] grid = {{0, 0, 0, 0},
                    {1, 1, 0, 0},
                    {0, 0, 0, 1},
                    {0, 1, 0, 0}};

        // Count paths (backtracking)
        int Dfs(int[][] grid, int r, int c, int[][] visit)
        {
            int ROWS = grid.Length, COLS = grid[0].Length;

            if (Math.Min(r, c) < 0 || r == ROWS || c == COLS ||
                visit[r][c] == 1 || grid[r][c] == 1)
            {
                return 0;
            }
            if (r == ROWS - 1 && c == COLS - 1)
            {
                return 1;
            }
            visit[r][c] = 1;

            int count = 0;
            count += Dfs(grid, r + 1, c, visit);
            count += Dfs(grid, r - 1, c, visit);
            count += Dfs(grid, r, c + 1, visit);
            count += Dfs(grid, r, c - 1, visit);

            visit[r][c] = 0;
            return count;
        }

    }
