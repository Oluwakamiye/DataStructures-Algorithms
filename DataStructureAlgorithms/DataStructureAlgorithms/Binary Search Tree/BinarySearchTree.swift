//
//  BinarySearchTree.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 03/03/2022.
//

import Foundation

struct BinarySearchTree<T: Comparable> {
    private(set) var root: BinaryTreeNode<T>?
    init() {}
}

extension BinarySearchTree {
    mutating func insert(_ value: T) {
        root = insert(from: root, value: value)
    }
    
    private func insert(from node: BinaryTreeNode<T>?, value: T) -> BinaryTreeNode<T> {
        print("Inserting for \(value)")
        guard let node = node else {
            return BinaryTreeNode(value: value)
        }
        if value < node.value {
            node.leftChild = insert(from: node.leftChild, value: value)
        } else {
            node.rightChild = insert(from: node.rightChild, value: value)
        }
        return node
    }
}

extension BinarySearchTree: CustomStringConvertible {
    var description: String {
        guard let root = root else {
            return "Empty tree"
        }
        return String(describing: root)
    }
}
