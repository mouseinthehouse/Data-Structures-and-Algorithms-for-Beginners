public class Range {
    // low = 1, high = 100

    // Binary search on some range of values
    public static int binarySearch(int low, int high) {
        int mid;

        while (low <= high) {
            mid = (low + high) / 2;

            if (isCorrect(mid) > 0) {
                high = mid - 1;
            } else if (isCorrect(mid) < 0) {
                low = mid + 1;
            } else {
                return mid;
            }
        }
        return -1;
    }

    // Return 1 if n is too big, -1 if too small, 0 if correct
    public static int isCorrect(int n) {
        if (n > 10) {
            return 1;
        } else if (n < 10) {
            return -1;
        } else {
            return 0;
        }
    }

    public static void main(String[] args) {
        System.out.println(binarySearch(1, 100));
        System.out.println(binarySearch(-50, 5));
        System.out.println(binarySearch(1, 7));
    }
}
