//
//  Stack.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 21/12/2021.
//

import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []
    var isEmpty: Bool {
        return peek() == nil
    }
    
    public init(storage: [Element]) {
        self.storage = storage
    }
    
    public init() {
        storage = []
    }
   
    
    func getReversed() -> String {
        let sStorage = ["Max", "Anjelique", "Agba", "Backstreet"]
        return sStorage.reversed().joined(separator: "-")
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        return storage.popLast()
    }
    
    func peek() -> Element? {
        return storage.last
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

extension Stack: CustomDebugStringConvertible {
    public var debugDescription: String {
    """
    ----top----
    \(storage.map { "\($0)" }.reversed().joined(separator:
    "\n"))
    -----------
    """
    }
}

