public class Fibonacci
{
    // Recursive implementation to calculate the n-th Fibonacci number
    // Base case: n = 0 or 1
    public static int FibonacciSeries(int n)
    {
        if (n <= 1)
        {
            return n;
        }

        // Recursive case: fib(n) = fib(n - 1) + fib(n - 1)
        return FibonacciSeries(n - 1) + FibonacciSeries(n - 2);
    }
}
