/*
 * SPDX-FileCopyrightText: © 2023 Daniel Zhang <https://github.com/d108/>
 * SPDX-License-Identifier: MIT License
 */

import XCTest
@testable import SwiftBinaryTreeModeler

final class BinaryTreeModel_Test: XCTestCase
{
    let sut = BinaryTreeModeler()

    // MARK: - Internal -

    func test_display() throws
    {
        let expectedTreeArray = [
            "  4_   ",
            " /  \\  ",
            " 2  6  ",
            "/  / \\ ",
            "1  5 7 ",
            "      \\",
            "      9",
        ]
        let node1 = BtNode(4)
        let node2 = BtNode(2)
        let node6 = BtNode(6)
        node2.left = BtNode(1)
        node6.left = BtNode(5)
        let node7 = BtNode(7)
        node6.right = node7
        node7.right = BtNode(9)
        node1.left = node2
        node1.right = node6
        sut.generate(node1)
        sut.display()
        XCTAssertEqual(sut.treeLines, expectedTreeArray)
    }

    /// Test traversing the tree gives sorted keys.
    /// Generate a binary search tree with random keys.
    func testBstNode()
    {
        let rootKey = 50
        var expected: Set<Int> = [rootKey]
        let bst = BstNode(rootKey)
        for _ in 0 ..< 10
        {
            let randomInt = Int.random(in: 0 ..< 100)
            bst.insert(randomInt)
            expected.insert(randomInt)
        }
        sut.generate(bst)
        sut.display()
        let result = bst.inorderTraversal(bst)
        XCTAssertEqual(Array(expected).sorted(), result)
    }
}
