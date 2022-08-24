#include <map>
#include <iostream>

using std::string;
using std::cout;
using std::endl;




int main() {
    std::map<string, string> count;
    string list[] = {"abc", "def"};
    for (auto s: list) {
        cout << s << endl;
    }
    return 0;
}