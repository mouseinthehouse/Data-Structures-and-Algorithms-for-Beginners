using System;
using System.Collections;

// Implementing a stack is trivial using a dynamic array
// (which we implemented earlier).
public class Stack
{
    ArrayList stack = new();

    public Stack() {}

    public void Push(int n)
    {
        stack.Add(n);
    }

    public int Pop()
    {
        if (Size() > 0)
        {
            int ele = (int)stack[stack.Count - 1];
            stack.RemoveAt(stack.Count - 1);
            return ele; 
        }
        return -1;
    }

    public int Size()
    {
        return stack.Count;
    }
}