// Recursive implementation to calculate the n-th Fibonacci number

public class Fibonacci { 

    // Base case: n = 0 or 1
    public static int fibonacci(int n) {
        if (n <= 1) {
            return n;
        }

        // Recursive case: fib(n) = fib(n - 1) + fib(n - 1)
        return fibonacci(n-1) + fibonacci(n-2);
    }

    public static void main(String[] args) {
        // F(0) = 0
        // F(1) = 1
        // F(2) = 1
        // F(3) = 2
        // F(4) = 3
        // F(5) = 5
        
        System.out.println(fibonacci(5));
    }
}