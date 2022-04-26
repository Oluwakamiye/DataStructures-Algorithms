//
//  MergeSort.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 21/04/2022.
//

import Foundation

public func mergeSort<T: Comparable>(_ arr: [T]) -> [T] {
    // Splitting section
    guard arr.count > 1 else {
        return arr
    }
    let middle = arr.count / 2
    let left = mergeSort(Array(arr[..<middle]))
    let right = mergeSort(Array(arr[middle...]))
    // Sorting Ssction
    return merge(left, right)
}

private func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    var mergedArray = [T]()
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
            mergedArray.append(leftElement)
            leftIndex += 1
        } else if rightElement < leftElement {
            mergedArray.append(rightElement)
            rightIndex += 1
        } else {
            mergedArray.append(leftElement)
            leftIndex += 1
            mergedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    if leftIndex < left.count {
        mergedArray.append(contentsOf: left[leftIndex...])
    }
    if rightIndex < right.count {
        mergedArray.append(contentsOf: right[rightIndex...])
    }
    return mergedArray
}
