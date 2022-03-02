//
//  main.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 21/12/2021.
//

import Foundation

//var queue = QueueArray<String>()
//
//queue.enqueue("Hello")
//queue.enqueue("From")
//queue.enqueue("The")
//queue.enqueue("Other")
//queue.enqueue("Side")
//queue.enqueue("Adele")
//
//print("Queue is \(queue)")
//
//var queue = QueueLinkedList<String>()
//queue.enqueue("Ray")
//queue.enqueue("Brian")
//queue.enqueue("Eric")
//print("Queue is \(queue)")
//queue.dequeue()
//print(queue)
//print("Peek \(queue.peek)")


// MARK: Start of Binary Tree
var tree: BinaryTreeNode<Int> = {
    let zero = BinaryTreeNode(value: 0)
    let one = BinaryTreeNode(value: 1)
    let five = BinaryTreeNode(value: 5)
    let seven = BinaryTreeNode(value: 7)
    let eight = BinaryTreeNode(value: 8)
    let nine = BinaryTreeNode(value: 9)
    seven.leftChild = one
    one.leftChild = zero
    one.rightChild = five
    seven.rightChild = nine
    nine.leftChild = eight
    return seven
}()
print(tree)
tree.inOrderTraversal {
    print($0)
}
// MARK: End of Binary Tree
