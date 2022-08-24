#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::vector;

class TreeNode {
    public:
        int val_;
        TreeNode* left = nullptr;
        TreeNode* right = nullptr;

        TreeNode(int val) {
            val_ = val;
        }
};

bool canReachLeaf(TreeNode *root) {
    if (!root || root->val_ == 0) {
        return false;
    }
    if (!root->left && !root->right) {
        return true;
    }
    if (canReachLeaf(root->left)) {
        return true;
    }
    if (canReachLeaf(root->right)) {
        return true;
    }
    return false;
}

bool leafPath(TreeNode* root, vector<int>* path) {
    if (!root || root->val_ == 0) {
        return false;
    }
    path->push_back(root->val_);

    if (!root->left && !root->right) {
        return true;
    }
    if (leafPath(root->left, path)) {
        return true;
    }
    if (leafPath(root->right, path)) {
        return true;
    }
    path->pop_back();
    return false;
}

int main() {
    // Build a tree like:
    //       4
    //    0     1
    //     7  2   0 
    TreeNode* root = new TreeNode(4);
    root->left = new TreeNode(0);
    root->left->right = new TreeNode(7);
    root->right = new TreeNode(1);
    root->right->left = new TreeNode(2);
    root->right->right = new TreeNode(0);

    cout << canReachLeaf(root) << endl;

    vector<int>* path = new vector<int>();
    cout << leafPath(root, path) << endl;
    for (int n: *path) {
        cout << n << ' '; // [4, 1, 2]
    }
    cout << endl;
    return 0;
}