#include <vector>
#include <iostream>

using std::vector;
using std::cout;
using std::endl;

vector<int> insertionSort(vector<int> arr) {
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
    int a[] = {4, 3, 2, 1, 6};
    //vector<int> arr = vector<int>(a);
    
    std::vector<int> v = {0, 1, 2, 3, 4, 5};

    // insertionSort(arr);
    for (auto n: v) {
        cout << n;
    }
    cout << endl;
    return 0;
}