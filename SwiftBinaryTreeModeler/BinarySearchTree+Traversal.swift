/*
 * SPDX-FileCopyrightText: © 2023 Daniel Zhang <https://github.com/d108/>
 * SPDX-License-Identifier: MIT License
 */

extension BstNode
{
    func inorderTraversal(_ node: BstNode?) -> [BtNodeType]
    {
        var result = [BtNodeType]()
        if let node
        {
            result += inorderTraversal(node.left as? BstNode)
            result.append(node.key)
            result += inorderTraversal(node.right as? BstNode)
        }
        return result
    }
}
