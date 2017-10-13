//
//  main.swift
//  calc-array-points
//
//  Created by zichu zheng on 10/12/17.
//  Copyright © 2017 zichu zheng. All rights reserved.
//

import Foundation

// Build a calculator
func add(first: Int?, second: Int?) -> Int? {
    if let firstNum = first, let secondNum = second {
        return firstNum + secondNum
    }
    return nil
}

func subtract(first: Int?, second: Int?) -> Int? {
    if let firstNum = first, let secondNum = second {
        return firstNum - secondNum
    }
    return nil
}

func multiply(first: Int?, second: Int?) -> Int? {
    if let firstNum = first, let secondNum = second {
        return firstNum * secondNum
    }
    return nil
}

func divide(first: Int?, second: Int?) -> Int? {
    if let firstNum = first, let secondNum = second {
        return firstNum / secondNum
    }
    return nil
}

func mathOperation(funcName: (Int?, Int?) -> Int?, first: Int?, second: Int?) -> Int? {
    return funcName(first, second)
}

// Array fun
func addArray(nums: [Int?]?) -> Int {
    var result = 0
    if let numsArray = nums {
        for eachNumber in numsArray {
            if let each = eachNumber {
                result += each
            }
        }
    }
    return result
}

func mulArray(nums: [Int?]?) -> Int {
    var result = 1
    if let numsArray = nums {
        for eachNumber in numsArray {
            if let each = eachNumber {
                result *= each
            }
        }
    }
    return result
}

func mathOperationArray(funcName: ([Int?]?) -> Int, array: [Int?]?) -> Int? {
    return funcName(array)
}

func countArray(nums: [Int?]?) -> Int {
    if let numsArray = nums {
        return numsArray.count
    }
    return 0
}

func avgArray(nums: [Int?]?) -> Double {
    return Double(addArray(nums: nums)) / Double(countArray(nums: nums))
}

// Points
func addTuples(first: (Int, Int), second: (Int, Int)) -> (Int, Int) {
    return (first.0 + second.0, first.1 + second.1)
}

func subtractTuples(first: (Int, Int), second: (Int, Int)) -> (Int, Int) {
    return (first.0 - second.0, first.1 - second.1)
}

// Dict
func addDict(first: [String : Double], second: [String : Double]) -> [String : Double] {
    if let firstXValue = first["x"], let secondXValue = second["x"], let firstYValue = first["y"], let secondYVale = second["y"] {
        return ["x" : firstXValue + secondXValue, "y" : firstYValue + secondYVale]
    }
    return ["x" : 0, "y" : 0]
}

func subtractDict(first: [String : Double], second: [String : Double]) -> [String : Double] {
    if let firstXValue = first["x"], let secondXValue = second["x"], let firstYValue = first["y"], let secondYVale = second["y"] {
        return ["x" : firstXValue - secondXValue, "y" : firstYValue - secondYVale]
    }
    return ["x" : 0, "y" : 0]
}
