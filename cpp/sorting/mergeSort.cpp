#include <iostream>
#include <vector>

using std::vector;
using std::cout;
using std::endl;;

vector<int> mergeSort(vector<int> arr, int s, int e) {
    if (e - s + 1 <= 1) {
        return arr;
    }
    // The middle index of the array
    int m = (s + e)  / 2;

    // Sort the left half
    mergeSort(arr, s, m);

    // Sort the right half
    mergeSort(arr, m + 1, e);

    // Merge sorted halfs
    merge(arr, s, m, e);
    
    return arr;
}

void merge(vector<int> arr, int s, int m, int e) {
    // TODO: copy array portions
}

int main() {
    vector<int> arr = {};

    mergeSort(arr, 0, arr.size() - 1);

    for (auto n: arr) {
        cout << n << endl;
    }

    return 0;
}