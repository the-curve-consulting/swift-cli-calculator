//
//  Calculator.swift
//  CalculatorApp
//
//  Created by Paul Ridgway on 21/04/2020.
//  Copyright © 2020 5052. All rights reserved.
//

import Foundation

protocol CalculatorFn {
    func execute(_ values: [Double]) -> Double
}

class AddFn : CalculatorFn {
    func execute(_ values: [Double]) -> Double {
        return values.reduce(0, +)
    }
}

class SubtractFn : CalculatorFn {
    func execute(_ values: [Double]) -> Double {
        return values.reduce(0, -)
    }
}

class DivideFn : CalculatorFn {
    func execute(_ values: [Double]) -> Double {
        return values.reduce(0, /)
    }
}

class MultiplyFn : CalculatorFn {
    func execute(_ values: [Double]) -> Double {
        return values.reduce(0, *)
    }
}
