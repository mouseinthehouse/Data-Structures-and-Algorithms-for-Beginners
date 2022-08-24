#include <iostream>
#include <vector>

using std::vector;
using std::cout;
using std::endl;

int binarySearch(vector<int> arr, int target) {
    int L = 0, R = arr.size();

    while (L <= R) {
        int mid = (L + R) / 2;

        if (target > arr[mid]) {
            L = mid + 1;
        } else if (target < arr[mid]) {
            R = mid - 1;
        } else {
            return mid;
        }
    }
    return -1;
}

int main() {
    vector<int> arr = {1, 3, 3, 4, 5, 6, 7, 8};

    cout << binarySearch(arr, 10) << endl;
    cout << binarySearch(arr, 0) << endl;
    cout << binarySearch(arr, 1) << endl;
    cout << binarySearch(arr, 5) << endl;
    cout << binarySearch(arr, 8) << endl;

    return 0;
}