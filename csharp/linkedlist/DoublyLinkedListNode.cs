public class DoublyLinkedListNode
{

    public int Value;
    public DoublyLinkedListNode Next;
    public DoublyLinkedListNode Prev;

    public DoublyLinkedListNode(int val)
    {
        Value = val;
        Next = null;
        Prev = null;
    }
}