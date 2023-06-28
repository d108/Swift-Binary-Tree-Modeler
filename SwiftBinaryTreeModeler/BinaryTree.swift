/*
 * SPDX-FileCopyrightText: © 2023 Daniel Zhang <https://github.com/d108/>
 * SPDX-License-Identifier: MIT License
 */

import Foundation

/// A binary tree or node of a binary tree.
class BtNode
{
    typealias BtNodeType = Int

    var key: BtNodeType
    var right: BtNode?
    var left: BtNode?
    var root: BtNodeType

    // MARK: - Lifecycle -

    /// Initializes a binary tree node with a key of type BtNodeType.
    /// - Parameters:
    ///   - key: A key for the node.
    ///   - left: A node to the left of the current node.
    ///   - right: A node to the right of the current node.
    init(_ key: BtNodeType, _ left: BtNode? = nil, _ right: BtNode? = nil)
    {
        self.key = key
        self.right = right
        self.left = left
        root = key
    }
}

extension BtNode
{
    /// Returns a string representation of a key.
    var keyString: String
    {
        "\(key)"
    }
}
