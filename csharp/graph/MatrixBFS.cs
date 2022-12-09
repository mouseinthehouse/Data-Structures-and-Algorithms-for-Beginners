public class MatrixBFS
{
    //Matrix (2D Grid)
    int[,] grid = { { 0, 0, 0, 0 }, { 1, 1, 0, 0 }, { 0, 0, 0, 1 }, { 0, 1, 0, 0 } };

    // Shortest path from top left to bottom right
    public int BFS(int[][] grid)
    {
        int nr = grid.Length;
        int nc = grid[0].Length;
        Queue<(int row, int col)> q = new Queue<(int row, int col)>();
        q.Enqueue((0, 0));
        int distanceTravelled = 1;
        while (q.Any())
        {
            int size = q.Count();
            for (int i = 0; i < size; i++)
            {
                (int row, int col) = q.Dequeue();
                if (row < 0 || row >= nr || col < 0 || col >= nc || grid[row][col] == 1)
                {
                    continue;
                }
                if (row == nr - 1 && col == nc - 1)
                {
                    return distanceTravelled;
                }
                grid[row][col] = 1;

                q.Enqueue((row - 1, col));
                q.Enqueue((row - 1, col + 1));
                q.Enqueue((row, col + 1));
                q.Enqueue((row + 1, col + 1));

                q.Enqueue((row + 1, col));
                q.Enqueue((row + 1, col - 1));
                q.Enqueue((row, col - 1));
                q.Enqueue((row - 1, col - 1));
            }
            distanceTravelled++;
        }
        return -1; // This should never be called
    }
}
