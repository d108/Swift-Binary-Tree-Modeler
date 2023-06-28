# Converting Python binary tree code

We based our code on the excellent answer found at https://stackoverflow.com/a/54074933.
It was a challenge to convert the Python code to Swift, but it was also fascinating.

Initially, we built trees using Strings, which worked perfectly for display.
We supplied a second initializer that took an Int for the key for convenience.

```swift
/// Initializes a binary search tree node with a key of type String.
/// - Parameters:
///   - key: A key for the node.
///   - left: The left child node.
///   - right: The right child node.
init(_ key: Int, _ left: BstNode? = nil, _ right: BstNode? = nil)
{
    super.init(String(key), left, right)
}

/// Inserts a key of type Int.
func insert(_ key: Int)
{
    insert(String(key))
}
```

We eventually came to the realization that this method was insufficient for further developing tree operations involving Ints.

We next explored the creation of a custom string type to facilitate bridging the differences between the Python code and Swift.

```swift
struct MyString: Comparable
{
    init(_ value: String)
    {
        self.value = value
    }

    // Initialize with an integer.
    init(_ value: Int)
    {
        self.value = String(value)
    }

    var value: String

    var count: Int
    {
        value.count
    }

    // Compare strings like integers.
    static func < (lhs: MyString, rhs: MyString) -> Bool
    {
        Int(lhs.value) ?? 0 < Int(rhs.value) ?? 0
    }
}

extension MyString: Sequence
{
    func makeIterator() -> String.Iterator
    {
        value.makeIterator()
    }
}
```

While this was a noble attempt, it introduces another layer of complexity.
By using Strings exclusively for printing, we can isolate computational logic.

Wherever a String is needed, we can pull one out with with the following extension.

```swift
extension BtNode
{
    var keyString: String
    {
        "\(key)"
    }
}
```

Extensions prove to be effective not only for Swift protocols, structs, and enums but also for classes. 
By prioritizing the decoupling of presentation and logic, we were able to devise a more streamlined approach and smoothly convert Python code to Swift.
