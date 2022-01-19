//
//  main.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 21/12/2021.
//

import Foundation

// Stack Call
var stack: Stack = [1,2,3,4,5,6]
//print(stack.debugDescription)

// LinkedListNode Call
var list = LinkedList<Int>()
list.append(3)
list.append(2)
list.append(1)
list.push(4)
list.append(8)
list.append(12)
//print(list)
//print("Popped item \(list.removeLast()!)")
//print(list)


let node = list.node(at: 5)!
let removedValue = list.remove(after: node)

/*
print("removed Value is \(removedValue)")
print("List after is \(list)")
 */
print("List1 unquely referenced? \(isKnownUniquelyReferenced(&list.head))")
var list2 = list
//print("List 1 :: \(list)")
//print("List 2 :: \(list2)")
//print("After appending")
//list2.append(19)
//print("List 1 :: \(list)")
//print("List 2 :: \(list2)")


print("List1 unquely referenced? \(isKnownUniquelyReferenced(&list.head))")
