public class Search
{
    public bool SearchNode(TreeNode root, int target)
    {
        if (root == null)
        {
            return false;
        }

        if (target > root.Value)
        {
            return SearchNode(root.Right, target);
        }
        else if (target < root.Value)
        {
            return SearchNode(root.Left, target);
        }
        else
        {
            return true;
        }
    }
}