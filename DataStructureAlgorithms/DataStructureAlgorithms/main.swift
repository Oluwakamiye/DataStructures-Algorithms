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

// MARK: Start of TreeNode
//func makeTree() -> TreeNode<String> {
//    let tree = TreeNode("Beverages")
//    let hot = TreeNode("hot")
//    let cold = TreeNode("cold")
//    let tea = TreeNode("tea")
//    let coffee = TreeNode("coffee")
//    let chocolate = TreeNode("cocoa")
//    let blackTea = TreeNode("black")
//    let greenTea = TreeNode("green")
//    let chaiTea = TreeNode("chai")
//    let soda = TreeNode("soda")
//    let milk = TreeNode("milk")
//    let gingerAle = TreeNode("ginger ale")
//    let bitterLemon = TreeNode("bitter lemon")
//    tree.add(hot)
//    tree.add(cold)
//    hot.add(tea)
//    hot.add(coffee)
//    hot.add(chocolate)
//    cold.add(soda)
//    cold.add(milk)
//    tea.add(blackTea)
//    tea.add(greenTea)
//    tea.add(chaiTea)
//    soda.add(gingerAle)
//    soda.add(bitterLemon)
//    return tree
//}
//let tree = makeTree()
//tree.forEachLevelOrder(visit: { print($0.value)})
// MARK: End of TreeNode


// MARK: Start of Binary Tree
//var tree: BinaryTreeNode<Int> = {
//    let zero = BinaryTreeNode(value: 0)
//    let one = BinaryTreeNode(value: 1)
//    let five = BinaryTreeNode(value: 5)
//    let seven = BinaryTreeNode(value: 7)
//    let eight = BinaryTreeNode(value: 8)
//    let nine = BinaryTreeNode(value: 9)
//    seven.leftChild = one
//    one.leftChild = zero
//    one.rightChild = five
//    seven.rightChild = nine
//    nine.leftChild = eight
//    return seven
//}()
//print(tree)
//tree.inOrderTraversal {
//    print($0)
//}
// MARK: End of Binary Tree


// MARK: Start of Binary Search Tree
//var bst =  BinarySearchTree<Int>()
//for i in 0..<5 {
//    bst.insert(i)
//}
//print(bst)
// MARK: End of Binary Search Tree


// MARK: Start of Trie Nodes
var trie = Trie<String>()
trie.insert("TEACHINGS")
trie.insert("TEACUPS")
trie.insert("TERRAIN")

var result = ""
trie.root.levelTraverse(visit: {
    if $0.key != nil {
        result += "\($0.key!)"
    }
})
print(result)
//print(trie.root.key)
//
if trie.contains("TERRA") {
    print("Trie contains TERRA")
} else {
    print("Trie does not contain TERRA")
}
// MARK: End of Trie Nodes
