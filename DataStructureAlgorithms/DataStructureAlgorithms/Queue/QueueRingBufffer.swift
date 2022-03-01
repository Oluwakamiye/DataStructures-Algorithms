//
//  QueueRingBufffer.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 17/02/2022.
//

import Foundation

class QueueRingBuffer<T>: Queue {
    private var ringBuffer: RingBuffer<T>
    var isEmpty: Bool {
        ringBuffer.isEmpty
    }
    
    var peek: T? {
        ringBuffer.first()
    }
    
    public init(count: Int) {
        ringBuffer = RingBuffer<T>(count: count)
    }
    
    func enqueue(_ element: T) -> Bool {
        ringBuffer.write(element)
    }
    
    func dequeue() -> T? {
        ringBuffer.read()
    }
}

extension QueueRingBuffer: CustomStringConvertible {
    public var description: String {
        String(describing: ringBuffer)
    }
}
