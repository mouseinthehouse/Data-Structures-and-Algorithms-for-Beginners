import java.util.ArrayList;

public class Stack {

    ArrayList<Integer> stack = new ArrayList<Integer>();

    public Stack() {   
    }

    public void push(int n) {
        stack.add(n);
    }

    public int pop() {
        return stack.remove(stack.size() - 1);
    }

    public int size() {
        return stack.size();
    }
}


// public class Main {
//     public static void main(String[] args) {
//         Stack stack = new Stack();

//         stack.push(1); [1]   
//         stack.push(2); [1, 2]
//         stack.push(3); [1, 2, 3]

//         stack.pop();   [1, 2]
//         stack.pop();   [1]
//         stack.pop();   []  

             
//     }
// }

