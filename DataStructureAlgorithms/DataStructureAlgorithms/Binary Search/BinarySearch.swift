//
//  BinarySearch.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 21/03/2022.
//

import Foundation

extension RandomAccessCollection where Element: Comparable {
    /// Binary search for element in a sorted dataStructure that implements RandomAccessCollection and random Index allocation in  real time.
    func binarySearch(for value: Element, in range: Range<Index>? = nil) -> Index {
        let range = range ?? startIndex..<endIndex
        let size = distance(from: range.lowerBound, to: range.upperBound)
        let middle = index(range.lowerBound, offsetBy: size / 2)
        
        if self[middle] == value {
            return middle
        } else {
            if value > self[middle] {
                return binarySearch(for: value, in: index(after: middle)..<range.upperBound)
            } else {
                return binarySearch(for: value, in: range.lowerBound..<middle)
            }
        }
    }
}
