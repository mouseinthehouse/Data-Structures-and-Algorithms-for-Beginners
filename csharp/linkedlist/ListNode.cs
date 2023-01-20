public class ListNode
{
    private int v;

    public int Value { get; set; }
    public ListNode Next { get; set; } 

    public ListNode(int val, ListNode next)
    {
        this.Value = val;
        this.Next = next; 
    }

    public ListNode(int v)
    {
        this.v = v;
    }
}
