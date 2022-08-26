import java.util.ArrayList;

// Definition of TreeNode:

// public class TreeNode {
//
//     int val;
//     TreeNode left;
//     TreeNode right;

//     public TreeNode(int val) {
//         this.val = val;
//         this.left= null;
//         this.right = null;
//     }
// }

public class TreeMaze {
    
    public boolean canReachLeaf(TreeNode root) {
        if (root == null || root.val == 0) {
            return false;
        } 
        if (root.left == null && root.right == null) {
            return true;
        }
        if (canReachLeaf(root.left)) {
            return true;
        }
        if (canReachLeaf(root.right)) {
            return true;
        }
        return false;
    }

    public boolean leafPath(TreeNode root, ArrayList<Integer> path) {
        if (root == null || root.val == 0) {
            return false;
        }
        path.add(root.val);

        if (root.left == null && root.right == null) {
            return true;
        }
        if (leafPath(root.left, path)) {
            return true;
        }
        if (leafPath(root.right, path)) {
            return true;
        }
        path.remove(path.size() - 1);
        return false;
    }

}

// import java.util.ArrayList;

// public class Main {
    
//     public static void main(String[] args) {

//         //  Build a tree like:
//         //        4
//         //     0     1
//         //      7  2   0 
        
//         TreeNode root = new TreeNode(4);
//         root.left = new TreeNode(0);
//         root.left.right = new TreeNode(7);
//         root.right = new TreeNode(1);
//         root.right.left = new TreeNode(2);
//         root.right.right = new TreeNode(0);

//         TreeMaze tm = new TreeMaze();
//         ArrayList<Integer> path = new ArrayList<Integer>();

//         System.out.println(tm.canReachLeaf(root));
//         System.out.println(tm.leafPath(root, path));
//         System.out.println(path);
//     }
// }
