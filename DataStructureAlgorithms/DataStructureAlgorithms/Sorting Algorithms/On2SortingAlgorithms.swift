//
//  BubbleSort.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 05/04/2022.
//

import Foundation

/// Works by comparing elements from L-R and swapping them into order
public func bubbleSort<T: Comparable>(_ array: inout [T]) {
    guard array.count >= 2 else {
        return
    }
    for end in (1..<array.count).reversed() {
        var swapped = false
        
        for current in 0..<end {
            if array[current] > array[current + 1] {
                array.swapAt(current, current + 1)
                swapped = true
            }
        }
        
        if !swapped {
            return
        }
    }
}


/// Works by selection an element from L-R and swapping it with the minimum
public func selectionSort<T: Comparable>(_ array: inout [T]) {
    guard array.count >= 2 else {
        return
    }
    var minIndex: Int = 0
    
    for pass in 0..<array.count {
        minIndex = pass
        for arrayIndex in pass..<array.count {
            if array[arrayIndex] < array[minIndex] {
                minIndex = arrayIndex
            }
        }
        if pass != minIndex {
            array.swapAt(pass, minIndex)
        }
    }
}


/// Orders elements by swapping elements  leftward
public func insertionSort<T: Comparable>(_ array: inout [T]) {
    guard array.count >= 2 else {
        return
    }
    
    for current in 1..<array.count {
        for shifting in (1...current).reversed() {
            if array[shifting] < array[shifting - 1] {
                array.swapAt(shifting, shifting - 1)
            } else {
                break
            }
        }
    }
}
