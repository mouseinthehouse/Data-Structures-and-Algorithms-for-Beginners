#include <vector>

using std::vector;

int main() {
    // Matrix (2D Grid)
    int grid[4][4] = {
        {0, 0, 0, 0},
        {1, 1, 0, 0},
        {0, 0, 0, 1},
        {0, 1, 0, 0}
    };

    // Adjacency matrix
    int adjMatrix[4][4] = {
        {0, 0, 0, 0},
        {1, 1, 0, 0},
        {0, 0, 0, 1},
        {0, 1, 0, 0}
    };
    return 0;
}

class GraphNode {
public:
    int val_;
    vector<int> neighbors_;

    GraphNode(int val) {
        val_ = val;
    }
};