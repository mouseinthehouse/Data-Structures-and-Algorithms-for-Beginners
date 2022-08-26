#include <iostream>

using std::cout;
using std::endl;

// Recursive implementation to calculate the n-th Fibonacci number
int fibonacci(int n) {
    // Base case: n = 0 or 1
    if (n <= 1) {
        return n;
    }
    // Recursive case: fib(n) = fib(n - 1) + fib(n - 1)
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int main() {
    // F(0) = 0
    // F(1) = 1
    // F(2) = 1
    // F(3) = 2
    // F(4) = 3
    // F(5) = 5
    cout << fibonacci(5) << endl;
    return 0;
}