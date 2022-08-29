import java.util.List;
import java.util.Set;
import java.lang.Math;

public class MatrixDFS {
    // Count paths (backtracking)
    int dfs(List<List<Integer>> grid, int r, int c, Set<Integer[]> visit) {
        int ROWS = grid.size(), COLS = grid.get(0).size();
        Integer[] position = {r , c};

        if (Math.min(r, c) < 0 || r == ROWS || c == COLS ||
            visit.contains(position) || grid.get(r).get(c) == 1 ) {
            return 0;
        }
        if (r == ROWS - 1 && c == COLS - 1) {
            return 1;
        }
        visit.add(position);

        int count = 0;
        count += dfs(grid, r + 1, c, visit);
        count += dfs(grid, r - 1, c, visit);
        count += dfs(grid, r, c + 1, visit);
        count += dfs(grid, r, c - 1, visit);

        visit.remove(position);
        return count;
    }
}
