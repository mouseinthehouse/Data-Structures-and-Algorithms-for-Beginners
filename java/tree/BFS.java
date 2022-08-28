// Definiton of TreeNode in Java
/*
public class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;

    public TreeNode(int val) {
        this.val = val; 
        left = null;
        right = null; 
    }
}
*/

import java.util.ArrayDeque;
import java.util.Deque;

public class BFS {
    
    public void bfs(TreeNode root) {
        Deque<TreeNode> queue = new ArrayDeque<TreeNode>();
        if (root != null) {
            queue.add(root);
        }
        
        int level = 0;
        while(queue.size() > 0) {
            System.out.println("level: " + level);
            for (int i = 0; i < queue.size(); i++) {
                TreeNode curr = queue.removeFirst();
                System.out.println(curr.val);
                if(curr.left != null) {
                    queue.add(curr.left);
                }
                if(curr.right != null) {
                    queue.add(curr.right);
                }
            }
            level++;
        }
    }
}
