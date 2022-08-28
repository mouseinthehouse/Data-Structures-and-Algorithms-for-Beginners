public class CountingBits {
    
    // Count the number of 1 bits in an int
    public static int countBits(int n) {
        int count = 0;
        while (n > 0) {
            if ((n & 1) == 1) {
                count++;
            }
            n = n >> 1; // same as n / 2
        }
        return count;
    }
}
