#include <iostream>

using std::cout;
using std::endl;

// Recursive implementation of n! (n-factorial) calculation
int factorial(int n) {
    // Base case: n = 0 or 1
    if (n <= 1) {
        return 1;
    }
    // Recursive case: n! = n * (n - 1)!
    return n * factorial(n - 1);
}

int main() {
    // 5! = 5 * 4 * 3 * 2 * 1 = 120
    cout << factorial(5) << endl;
    return 0;
}