#include <vector>
#include <iostream>

using std::vector;
using std::cout;
using std::endl;

vector<int> insertionSort(vector<int>& arr) {
    for (int i = 1; i < arr.size(); i++) {
        int j = i - 1;
        while (j >= 0 && arr[j + 1] < arr[j]) {
            int tmp = arr[j + 1];
            arr[j + 1] = arr[j];
            arr[j] = tmp;
            j--;
        }
    }
    return arr;
}

int main() {
    std::vector<int> arr = {4, 3, 2, 1, 6};

    insertionSort(arr);

    for (auto n: arr) {
        cout << n << ' ';
    }
    cout << endl;
    return 0;
}