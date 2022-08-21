// Java implementation of Binary Search

public class Array {
    public static int binarySearch(int[] arr,  int target) {
        int L = 0, R = arr.length - 1;
        int mid;

        while (L <= R) {
            mid = (L + R) / 2;
            if (target > arr[mid]) {
                L = mid + 1;
            } else if (target < arr[mid]) {
                R = mid - 1;
            } else {
                return mid;
            }
        }
        return - 1;
    }

    public static void main(String[] args) {
        int[] arr = {1, 3, 3, 4, 5, 6, 7, 8};

        System.out.println(binarySearch(arr, 10)); // -1
        System.out.println(binarySearch(arr, 0));  // -1
        System.out.println(binarySearch(arr, 1));  //  0
        System.out.println(binarySearch(arr, 5));  //  4
        System.out.println(binarySearch(arr, 6));  //  5
    }
}