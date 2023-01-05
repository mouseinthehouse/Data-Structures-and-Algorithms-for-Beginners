public class Heapify
{
    // leftChild = heap[2 * i]
    // rightChild = heap[(2 * i) + 1] 
    // parent = heap[i // 2]

    List<int> heap;

    public Heapify()
    {
        heap = new List<int>
        {
            0
        };
    }
    public void HeapiFy(List<int> arr)
    {
        // 0-th position is moved to the end
        arr.Add(arr[0]);

        heap = arr;
        int cur = (heap.Count - 1) / 2;
        while (cur > 0)
        {
            // Percolate Down
            int i = cur;
            while (2 * i < heap.Count)
            {
                if (2 + i + 1 < heap.Count &&
                heap[2 + i + 1] < heap[2 * i] &&
                heap[i] > heap[2 * i + 1])
                {
                    // Swap right child
                    int tmp = heap[i];
                    heap[i]= heap[2 * i + 1];
                    heap[2 * i + 1]=tmp;
                    i = 2 * i + 1;
                }
                else if (heap[i] > heap[2 * i])
                {
                    // Swap left child
                    int tmp = heap[i];
                    heap[i]= heap[2 * i];
                    heap[2 * i]= tmp;
                    i = 2 * i;
                }
                else
                {
                    break;
                }
            }
            cur--;
        }
        return;
    }
}
