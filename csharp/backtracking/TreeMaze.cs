/*  Definition of TreeNode:
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
}*/
public class TreeMaze
{ 
    public bool CanReachLeaf(TreeNode root)
    {
        if (root == null || root.Val == 0)
        {
            return false;
        }
        if (root.Left == null && root.Right == null)
        {
            return true;
        }
        if (CanReachLeaf(root.Left))
        {
            return true;
        }
        if (CanReachLeaf(root.Right))
        {
            return true;
        }
        return false;
    }

    public bool LeafPath(TreeNode root, List<int> path)
    {
        if (root == null || root.Val == 0)
        {
            return false;
        }
        path.Add(root.Val);

        if (root.Left == null && root.Right == null)
        {
            return true;
        }
        if (LeafPath(root.Left, path))
        {
            return true;
        }
        if (LeafPath(root.Right, path))
        {
            return true;
        }
        path.Remove(path.Count - 1);
        return false;
    } 
} 
 