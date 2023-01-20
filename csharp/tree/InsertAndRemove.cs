

public class InsertAndRemove
{
    // Insert a new node and return the root of the BST.
    public TreeNode Insert(TreeNode root, int val)
    {
        if (root == null)
        {
            return new TreeNode(val);
        }

        if (val > root.Value)
        {
            root.Right = Insert(root.Right, val);
        }
        else if (val < root.Value)
        {
            root.Left = Insert(root.Left, val);
        }
        return root;
    }

    // Return the minimum value node of the BST.
    public TreeNode MinValueNode(TreeNode root)
    {
        TreeNode curr = root;
        while (curr != null && curr.Left != null)
        {
            curr = curr.Left;
        }
        return curr;
    }

    // Remove a node and return the root of the BST.
    public TreeNode Remove(TreeNode root, int val)
    {
        if (root == null)
        {
            return null;
        }
        if (val > root.Value)
        {
            root.Right = Remove(root.Right, val);
        }
        else if (val < root.Value)
        {
            root.Left = Remove(root.Left, val);
        }
        else
        {
            if (root.Left == null)
            {
                return root.Right;
            }
            else if (root.Right == null)
            {
                return root.Left;
            }
            else
            {
                TreeNode minNode = MinValueNode(root.Right);
                root.Value = minNode.Value; 
                root.Right = Remove(root.Right, minNode.Value);
            }
        }
        return root;
    }
}