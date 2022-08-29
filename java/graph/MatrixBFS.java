import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Set;
import java.lang.Math;

public class MatrixBFS {

    //Matrix (2D Grid)
    int[][] grid = {{0, 0, 0, 0},
                    {1, 1, 0, 0},
                    {0, 0, 0, 1},
                    {0, 1, 0, 0}};

    // Shortest path from top left to bottom right
    public int bfs(int[][] grid) {
        int ROWS = grid.length;
        int COLS = grid[0].length;
        Set<Integer[]> visit = new HashSet<Integer[]>();
        Deque<Integer[]> queue = new ArrayDeque<>();

        queue.add(new Integer[2]);
        visit.add(new Integer[2]);

        int length = 0;
        while (!queue.isEmpty()) {
            for (int i = 0; i < queue.size(); i++) {
                Integer pair[] = queue.poll();
                int r = pair[0], c = pair[1];
                if (r == ROWS - 1 && c == COLS - 1) {
                    return length;
                }    
                // We can directly build the four neighbors
                Integer[][] neighbors = {{r, c + 1}, {r, c - 1}, {r + 1, c}, {r - 1, c}};
                for (int j = 0; j < 4; j++) {
                    int newR = neighbors[j][0], newC = neighbors[j][1];
                    if (Math.min(newR, newC) < 0 || newR == ROWS || newC == COLS
                    || visit.contains(neighbors[j]) || grid[newR][newC] == 1) {
                        continue;
                    }
                    queue.add(neighbors[j]);
                    visit.add(neighbors[j]);
                }
            }
            length++;
        }
        return length; // This should never be called
    }
}