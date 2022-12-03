/*
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
 */
public class DFS
{
    public void InOrder(TreeNode root)
    {
        if (root == null)
        {
            return;
        }
        InOrder(root.Left);
        Console.WriteLine(root.Value);
        InOrder(root.Right);
    }

    public void PreOrder(TreeNode root)
    {
        if (root == null)
        {
            return;
        }
        Console.WriteLine(root.Value);
        PreOrder(root.Left);
        PreOrder(root.Right);
    }

    public void PostOrder(TreeNode root)
    {
        if (root == null)
        {
            return;
        }
        PostOrder(root.Left);
        PostOrder(root.Right);
        Console.WriteLine(root.Value);
    }
}