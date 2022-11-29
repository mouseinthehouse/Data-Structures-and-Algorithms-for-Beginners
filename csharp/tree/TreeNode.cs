public class TreeNode
{
    public int Value { get; set; }
    public TreeNode Left { get; set; }
    public TreeNode Right { get; set; }

    public TreeNode(int val, TreeNode left, TreeNode right)
    {
        this.Value = val;
        this.Left = left;
        this.Right = right;
    }
}
