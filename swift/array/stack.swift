// Implementing a stack is trivial using a dynamic array
// (which we implemented earlier).
class Stack {
  var stack: [Int] = []

  func push(_ n: Int) {
    stack.append(n)
  } 

  func pop() -> Int {
    return stack.removeLast()
  }
}