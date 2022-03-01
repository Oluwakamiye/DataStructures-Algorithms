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

var queue = QueueLinkedList<String>()
queue.enqueue("Ray")
queue.enqueue("Brian")
queue.enqueue("Eric")
print("Queue is \(queue)")
queue.dequeue()
print(queue)
print("Peek \(queue.peek)")
