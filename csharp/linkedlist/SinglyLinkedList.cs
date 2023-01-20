/*
public class ListNode {
    int val;
    ListNode Next;

    public ListNode(int val) {
        this.val = val;
        this.Next = null;
    }
}
*/

// Implementation for Singly Linked List
public class SinglyLinkedList
{
    ListNode head;
    ListNode tail;

    public SinglyLinkedList()
    {
        head = new ListNode(-1);
        tail = head;
    }

    public void InsertEnd(int val)
    {
        tail.Next = new ListNode(val);
        tail = tail.Next;
    }

    public void Remove(int index)
    {
        int i = 0;
        ListNode curr = head;
        while (i < index && curr != null)
        {
            i++;
            curr = curr.Next;
        }

        // Remove the node ahead of curr
        if (curr != null && curr.Next != null)
        {
            if (curr.Next == tail)
            {
                tail = curr;
            }
            curr.Next = curr.Next.Next;
        }
    }

    public void Print()
    {
        ListNode curr = head.Next;
        while (curr != null)
        {
            Console.WriteLine (curr.Value + " -> ");
            curr = curr.Next;
        }
        Console.WriteLine("");
    } 
}
