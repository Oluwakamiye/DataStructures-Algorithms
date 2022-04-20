//
//  Exercise.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 13/04/2022.
//

import Foundation

// This is to test my understanding of all the O(n2) algorithms.
// I am finally understanding how they all work at the same time since 2016 😀

func eBubbleSort<T: Comparable>(_ array: inout [T]) {
    guard array.count > 1 else {
        return
    }
    for index in (1..<array.count).reversed() {
        var swapped = false
//        for innerIndex in (0...index) {
//            if array[index] < array[innerIndex] {
//                array.swapAt(index, innerIndex)
//            }
//        }
        for innerIndex in 0..<index {
            if array[innerIndex] > array[innerIndex + 1] {
                array.swapAt(innerIndex + 1, innerIndex)
                swapped = true
            }
        }
        if !swapped {
            return
        }
    }
}

func eSelectionSort<T: Comparable>(_ array: inout [T]) {
    guard array.count > 1 else {
        return
    }
    for workingIndex in 0..<array.count {
        for innerIndex in workingIndex..<array.count {
            let innerArray: ArraySlice = array[innerIndex..<array.count]
            guard let min = innerArray.min(),
                  let indexOfMin = innerArray.firstIndex(of: min) else {
                return
            }
//            print("For workingIndex \(workingIndex)")
//            print("For innerIndex \(innerIndex) - \(array.count)")
//            print("For minimum value \(min) withIndex \(indexOfMin)")
////            print("For workingIndex \(workingIndex)")
            if indexOfMin != innerIndex {
                array.swapAt(indexOfMin, innerIndex)
            }
        }
    }
}


func eInsertionSort<T: Comparable>(_ arr: inout [T]) {
    guard arr.count > 1 else {
        return
    }
    for index in 1..<arr.count {
        var upperLimit = index
        while (upperLimit > 0 && (arr[upperLimit - 1] > arr[upperLimit])) {
            arr.swapAt(upperLimit, upperLimit - 1)
            upperLimit -= 1
        }
    }
}
