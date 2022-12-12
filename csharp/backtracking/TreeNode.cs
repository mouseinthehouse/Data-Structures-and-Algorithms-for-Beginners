public class TreeNode
{
    public int Val { get; set; }
    public TreeNode Left { get; set; }
    public TreeNode Right { get; set; }

    public TreeNode(int val)
    {
        this.Val = val;
        this.Left = null;
        this.Right = null;
    }
}