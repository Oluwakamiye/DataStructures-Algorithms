//
//  Queue.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 27/01/2022.
//

import Foundation

protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element) -> Bool
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}
