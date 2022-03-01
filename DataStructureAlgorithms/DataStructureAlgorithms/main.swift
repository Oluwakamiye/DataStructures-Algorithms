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

// Tree Node
func makeTree() -> TreeNode<String> {
    let tree = TreeNode("Beverages")
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let chocolate = TreeNode("cocoa")
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    let gingerAle = TreeNode("ginger ale")
    let bitterLemon = TreeNode("bitter lemon")
    tree.add(hot)
    tree.add(cold)
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    cold.add(soda)
    cold.add(milk)
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    soda.add(gingerAle)
    soda.add(bitterLemon)
    return tree
}

let tree = makeTree()
tree.forEachLevelOrder(visit: { print($0.value)})
