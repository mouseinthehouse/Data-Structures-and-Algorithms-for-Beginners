public class Factorial
{
    public static int FactorialOfNumber(int n)
    {
        // Base case: n = 0 or 1
        if (n <= 1)
        {
            return 1;
        }

        // Recursive case: n! = n * (n - 1)!
        return n * FactorialOfNumber(n - 1);
    }
}
