# Swift Binary Tree Modeler

Binary Trees are a fundamental data structure in computer science and are extensively used for a variety of problems.
They form the backbone of various complex data structures including Binary Search Trees (BST), AVL Trees, Red-Black Trees, Heaps, and several others.

While solving problems related to these data structures, having a clear and visual representation of the tree is of utmost importance.
This allows us to better understand the tree's structure, comprehend the effects of various operations, and aids significantly in debugging any issues.
A visual representation of a Binary Tree could potentially be the difference between understanding and solving a problem and getting stuck on it.

A separate file discusses [converting binary tree printing from Python.](Converting%20Python%20binary%20tree%20code.md)

## Pretty-Printing Binary Trees

To facilitate easier understanding and debugging, this utility provides a "pretty-printing" functionality for binary trees.
It represents the binary tree structure in a 2D space with appropriate spacing and connections to mimic the visual understanding of a tree.

For binary trees like:

```
      50___                                         50_____                   
     /     \                                       /       \                  
    37    60_____                                 49    __61___               
   /     /       \                               /     /       \              
  30    51      68___                 __________42    56_     68___           
 /             /     \               /                   \   /     \          
18            66    91              26___               57  66    72_         
             /     /               /     \                       /   \        
            63    82            __23    32_____                 69  76_______ 
                               /       /       \                             \
                               9_     29      41                            94
                                 \           /                             /  
                                21          39                          __90  
                                           /                           /      
                                          37                          85_     
                                                                         \    
                                                                        87  
```

With such visualizations, it becomes easier to understand the tree structure and follow the logic of tree operations like insertion, deletion, searching, etc.

## Key Benefits

- **Debugging**: A visual representation allows you to spot any irregularities or issues in the tree structure.
  For example, it would be easier to spot if a node is wrongly placed in a Binary Search Tree.

- **Understanding**: Seeing the tree structure allows you to better understand the effect of various operations, especially when dealing with balancing trees like AVL Trees or Red-Black Trees.

- **Communication**: It also aids in communication and discussion about the problem.
  A visual representation is more intuitive and easy to comprehend for most people.

Whether you're a student learning about binary trees for the first time or an experienced developer debugging a complex tree structure, this binary tree pretty-printing utility is an invaluable tool in your toolkit.
Happy tree-tracing!

## Install

    $ git clone https://github.com/d108/Swift-Binary-Tree-Modeler.git
    $ cd Swift-Binary-Tree-Modeler
    $ open Swift-Binary-Tree-Modeler.xcodeproj

## Test

Choose Product > Test from the menu bar.

## LICENSE

Copyright (c) 2023 Daniel Zhang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
