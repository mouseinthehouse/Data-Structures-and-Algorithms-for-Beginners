import java.util.Arrays;

public class InsertionSort {
    public static int[] insertionSort(int[] arr) {
        for (int i = 1; i < arr.length; i++) {
            int j = i - 1;
            while (j >= 0 && arr[j+1] < arr[j]) {
                int tmp = arr[j + 1];
                arr[j + 1] = arr[j];
                arr[j] = tmp;
                j--;
            }
        }
        return arr;
    }

    public static void main(String[] args) {
        int[] arr = {4, 3, 2, 1, 6};
        System.out.println(Arrays.toString(insertionSort(arr)));
    }
}
