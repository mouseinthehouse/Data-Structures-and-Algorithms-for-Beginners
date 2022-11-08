public class Range
{
    // Binary search on some range of values
    public static int binarySearch(int low, int high)
    {
        int mid;

        while (low <= high)
        {
            mid = (low + high) / 2;

            if (isCorrect(mid) > 0)
            {
                high = mid - 1;
            }
            else if (isCorrect(mid) < 0)
            {
                low = mid + 1;
            }
            else
            {
                return mid;
            }
        }
        return -1;
    }

    // Return 1 if n is too big, -1 if too small, 0 if correct
    public static int isCorrect(int n)
    {
        if (n > 10)
        {
            return 1;
        }
        else if (n < 10)
        {
            return -1;
        }
        else
        {
            return 0;
        }
    }
}
