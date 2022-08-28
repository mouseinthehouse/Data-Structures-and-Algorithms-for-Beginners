const arr = [1, 3, 3, 4, 5, 6, 7, 8]

/**
 * @param {Array} arr
 * @param {let} target
 * @return {let}
 */
function binarySearch(arr, target) {
    let L = 0, R = arr.length - 1;

    while (L <= R) {
        let mid = Math.floor((L + R) / 2);

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

console.log(binarySearch(arr, 10));
console.log(binarySearch(arr, 0));
console.log(binarySearch(arr, 1));
console.log(binarySearch(arr, 5));
console.log(binarySearch(arr, 6));