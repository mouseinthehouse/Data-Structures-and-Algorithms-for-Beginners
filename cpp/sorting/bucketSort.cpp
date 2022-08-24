#include <vector>
#include <iostream>

using std::vector;
using std::cout;
using std::endl;

// C++ implementation of Bucket Sort
vector<int> bucketSort(vector<int> arr) {
    // Assuming arr only contains 0, 1 or 2
    int counts[] = {0, 0, 0};

    // Count the quantity of each val in arr
    for (int n: arr) {
        counts[n]++;
    }

    int i = 0;
    for (int n = 0; n < 3; n++) {
        for (int j = 0; i < counts[n]; j++) {
            arr[i] = n;
            i++;
        }
    }
    return arr;
}

int main() {
    int a[] = {2, 1, 2, 0, 0, 2};
    //vector<int> arr = vector<int>(a);
    
    bucketSort(arr);
    for (auto n: a) {
        cout << n;
    }
    cout << endl;
    return 0;
}