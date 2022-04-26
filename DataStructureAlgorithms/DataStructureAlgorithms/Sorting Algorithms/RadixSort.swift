//
//  RadixSort.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 25/04/2022.
//

import Foundation

func radixSort(array: inout [Int]) {
    guard !array.isEmpty else {
        return
    }
    var internalArray: [Int]
    var lastDigitDictionary: [Int: [Int]]
    var counter = 0
    repeat {
        internalArray = array
        lastDigitDictionary = .init(grouping: internalArray, by: {getLastDigit(number: $0, power: counter)})
        internalArray = [Int]()
        let keys = lastDigitDictionary.keys.sorted()
        for key in keys {
            internalArray.append(contentsOf: lastDigitDictionary[key]!)
        }
        array = internalArray
        counter += 1
    } while (isRadixSortStillValid(numbers: array, power: counter))
}

fileprivate func getLastDigit(number: Int, power: Int) -> Int {
    let powered10: Int = Int(pow(Double(10), Double(power)))
    return power == 0 ? number % 10 : ((number / powered10) % powered10)
}

fileprivate func isRadixSortStillValid(numbers: [Int], power: Int) -> Bool {
    var stillValid = false
    let powered10: Int = Int(pow(Double(10), Double(power)))
    for number in numbers {
        if number > powered10 {
            stillValid = true
            continue
        }
    }
    return stillValid
}
