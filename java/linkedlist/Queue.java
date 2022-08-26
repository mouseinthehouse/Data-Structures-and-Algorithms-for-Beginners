// Definition of singly-linked list:

// public class ListNode {
//     int val;
//     ListNode next;

//     public ListNode(int val) {
//         this.val = val;
//         this.next = null;
//     }
// }

public class Queue {
    ListNode left;  // front of Queue   front -> [1,2,3]
    ListNode right; // back of Queue   [1,2,3] <- back
    
    public Queue() {
        this.left  = null;
        this.right = null;
    }

    public void enqueue(int val) {
        ListNode newNode = new ListNode(val);
        if (this.right != null) {  
        // Queue is not empty 
            this.right.next = newNode;
            this.right = this.right.next;
        } else {       
        // Queue is empty             
            this.left = newNode;
            this.right = newNode;
        }
    }

    public int dequeue() {
        if (this.left == null) {
        // Queue is empty 
            System.exit(0);
        }
        int val = this.left.val;
        this.left = this.left.next;
        return val;
        
    }

    public void print() {
        ListNode cur = this.left;
        while(cur != null) {
            System.out.print(cur.val + " -> ");
            cur = cur.next;
        }
        System.out.println();
    }

}

// public class Main {
//     public static void main(String[] args) {
//         Queue q = new Queue();

//         q.enqueue(1);  // 1  ->
//         q.enqueue(2);  // 1  -> 2  ->
       
//         q.dequeue();   // 2 ->
    
//         q.enqueue(3);  // 2  -> 3 ->
//         q.enqueue(4);  // 2  -> 3 -> 4 ->
       
//         q.dequeue();   // 3  -> 4 ->
//         q.dequeue();   // 4 ->
       
//     }
// }

