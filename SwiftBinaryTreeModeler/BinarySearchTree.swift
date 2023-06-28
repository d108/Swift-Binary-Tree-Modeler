/*
 * SPDX-FileCopyrightText: © 2023 Daniel Zhang <https://github.com/d108/>
 * SPDX-License-Identifier: MIT License
 */

/// A binary search tree or node of a binary search tree.
class BstNode: BtNode
{
    // MARK: - Lifecycle -

    /// Node constructor.
    /// - Parameters:
    ///   - key: A key for the node.
    ///   - left: The left child node.
    ///   - right: The right child node.
    init(_ key: BtNodeType, _ left: BstNode? = nil, _ right: BstNode? = nil)
    {
        super.init(key, left, right)
    }

    // MARK: - Internal -

    /// Inserts a key of type BtNodeType into the binary search tree.
    /// - Parameter key: A key for the node.
    func insert(_ key: BtNodeType)
    {
        if self.key == key
        {
            return
        } else if self.key < key
        {
            if right == nil
            {
                right = BstNode(key)
            } else
            {
                (right as? BstNode)?.insert(key)
            }
        } else
        {
            // When self.key > key:
            if left == nil
            {
                left = BstNode(key)
            } else
            {
                (left as? BstNode)?.insert(key)
            }
        }
    }

    /// - returns: A bool indicating whether the node is a leaf.
    func isLeaf() -> Bool
    {
        right == nil && left == nil
    }
}
