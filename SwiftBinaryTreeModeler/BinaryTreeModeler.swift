/*
 * SPDX-FileCopyrightText: © 2023 Daniel Zhang <https://github.com/d108/>
 * SPDX-License-Identifier: MIT License
 */

/// Based on https://stackoverflow.com/a/54074933
/// Requires binary tree nodes to have a key of type String.
class BinaryTreeModeler
{
    var treeLines: [String] = []

    // MARK: - Internal -

    /// Generates a binary tree.
    /// - Parameter node: The root node of the binary tree.
    func generate(_ node: BtNode)
    {
        (treeLines, _, _, _) = displayAux(node)
    }

    /// Displays the lines of the binary tree.
    func display()
    {
        treeLines
            .forEach
            { line in
                print(line)
            }
    }

    // MARK: - Private -

    private func displayAux(_ node: BtNode) -> ([String], Int, Int, Int)
    {
        if node.right == nil, node.left == nil
        {
            let line = node.keyString
            let width = line.count
            let height = 1
            let middle = width / 2
            return ([line], width, height, middle)
        }

        if node.right == nil, let leftNode = node.left
        {
            let (lines, n, p, x) = displayAux(leftNode)
            let s = node.keyString
            let u = s.count
            let firstLine = String(repeating: " ", count: x + 1) +
                String(repeating: "_", count: n - x - 1) + s
            let secondLine = String(repeating: " ", count: x) + "/" +
                String(repeating: " ", count: n - x - 1 + u)
            let shiftedLines = lines
                .map { $0 + String(repeating: " ", count: u) }
            return (
                [firstLine, secondLine] + shiftedLines,
                n + u,
                p + 2,
                n + u / 2
            )
        }

        if node.left == nil, let rightNode = node.right
        {
            let (lines, n, p, x) = displayAux(rightNode)
            let s = node.keyString
            let u = s.count
            let firstLine = s + String(repeating: "_", count: x) +
                String(repeating: " ", count: n - x)
            let secondLine = String(repeating: " ", count: u + x) + "\\" +
                String(repeating: " ", count: n - x - 1)
            let shiftedLines = lines
                .map { String(repeating: " ", count: u) + $0 }
            return ([firstLine, secondLine] + shiftedLines, n + u, p + 2, u / 2)
        }

        var (left, n, p, x) = displayAux(node.left!)
        var (right, m, q, y) = displayAux(node.right!)
        let s = node.keyString
        let u = s.count
        let firstLine = String(repeating: " ", count: x + 1) +
            String(repeating: "_", count: n - x - 1) + s +
            String(repeating: "_", count: y) +
            String(repeating: " ", count: m - y)
        let secondLine = String(repeating: " ", count: x) + "/" +
            String(repeating: " ", count: n - x - 1 + u + y) + "\\" +
            String(repeating: " ", count: m - y - 1)
        p < q ? (0 ... (q - p))
            .forEach { _ in left += [String(repeating: " ", count: n)] }
            : q < p ? (0 ... (p - q))
            .forEach { _ in right += [String(repeating: " ", count: m)] }
            : ()
        let zippedLines = Array(zip(left, right))
        let lines = [firstLine, secondLine] + zippedLines
            .map { $0 + String(repeating: " ", count: u) + $1 }
        return (lines, n + m + u, max(p, q) + 2, n + u / 2)
    }
}
