// Implementation for Doubly Linked List
public class DoublyLinkedList
{
    DoublyLinkedListNode head;
    DoublyLinkedListNode tail;

    public DoublyLinkedList()
    {
        head = new DoublyLinkedListNode(-1);
        tail = new DoublyLinkedListNode(-1);
        head.Next = tail;
        tail.Prev = head;
    }

    public void InsertFront(int val)
    {
        DoublyLinkedListNode newNode = new DoublyLinkedListNode(val)
        {
            Prev = head,
            Next = head.Next
        };

        head.Next.Prev = newNode;
        head.Next = newNode;
    }

    public void InsertEnd(int val)
    {
        DoublyLinkedListNode newNode = new DoublyLinkedListNode(val)
        {
            Next = tail,
            Prev = tail.Prev
        };

        tail.Prev.Next = newNode;
        tail.Prev = newNode;
    }

    public void RemoveFront()
    {
        head.Next.Next.Prev = head;
        head.Next = head.Next.Next;
    }

    public void RemoveEnd()
    {
        tail.Prev.Prev.Next = tail;
        tail.Prev = tail.Prev.Prev;
    }

    public void Print()
    {
        DoublyLinkedListNode curr = head.Next;
        while (curr != tail)
        {
            Console.WriteLine(curr.Value + " -> ");
            curr = curr.Next;
        }
        Console.WriteLine("");
    }
}

