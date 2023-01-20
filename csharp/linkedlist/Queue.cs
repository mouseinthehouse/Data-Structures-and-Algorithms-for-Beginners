// public class ListNode {
//     int Value;
//     ListNode Next;
//
//     public ListNode(int val) {
//         this.Value = val;
//         this.Next = null;
//     }
// }

public class Queue
{
    ListNode Left;  // front of Queue   front -> [1,2,3]
    ListNode Right; // back of Queue   [1,2,3] <- back

    public Queue()
    {
        this.Left = null;
        this.Right = null;
    }

    public void EnQueue(int val)
    {
        ListNode newNode = new ListNode(val);
        if (this.Right != null)
        {
            // Queue is not empty 
            this.Right.Next = newNode;
            this.Right = this.Right.Next;
        }
        else
        {
            // Queue is empty             
            this.Left = newNode;
            this.Right = newNode;
        }
    }

    public int DeQueue()
    {
        if (this.Left == null)
        {
            // Queue is empty 
            return -1;
        }
        int val = this.Left.Value;
        this.Left = this.Left.Next;
        if (this.Left == null)
        {
            this.Right = null;
        }
        return val;
    }

    public void Print()
    {
        ListNode cur = this.Left;
        while (cur != null)
        {
            Console.WriteLine(cur.Value + " -> ");
            cur = cur.Next;
        }
        Console.WriteLine("");
    }

}
