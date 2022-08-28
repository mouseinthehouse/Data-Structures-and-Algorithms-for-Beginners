import java.util.List;
import java.util.ArrayList;

public class GraphNode {
    int val;
    List<GraphNode> neighbors;
    
    public GraphNode(int val) {
        this.val = val;
        this.neighbors = new ArrayList<GraphNode>();
    }
}

