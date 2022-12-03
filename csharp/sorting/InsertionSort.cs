public class InsertionSort
{
    public static int[] Sort(int[] arr)
    {
        for (int i = 1; i < arr.Length; i++)
        {
            int j = i - 1;
            while (j >= 0 && arr[j + 1] < arr[j])
            {
                int tmp = arr[j + 1];
                arr[j + 1] = arr[j];
                arr[j] = tmp;
                j--;
            }
        }
        return arr;
    }
}
