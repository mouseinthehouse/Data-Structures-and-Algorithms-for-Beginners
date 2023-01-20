public class GraphNode
{
    public int Value { get; set; }
    public List<GraphNode> Neighbors { get; set; }

    public GraphNode(int val)
    {
        this.Value = val;
        this.Neighbors = new List<GraphNode>();
    } 
}
