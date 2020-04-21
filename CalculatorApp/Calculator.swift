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
        var v = values; // Make it mutable
        let first = v.removeFirst()
        return v.reduce(first, -)
    }
}

class DivideFn : CalculatorFn {
    func execute(_ values: [Double]) -> Double {
        var v = values; // Make it mutable
        let first = v.removeFirst()
        return v.reduce(first, /)
    }
}

class MultiplyFn : CalculatorFn {
    func execute(_ values: [Double]) -> Double {
        var v = values; // Make it mutable
        let first = v.removeFirst()
        return v.reduce(first, *)
    }
}

class Calculator {
    
    private func handle(_ fn: CalculatorFn, _ values: [Double]) -> Double {
        return fn.execute(values)
    }
    
    func add(_ values: [Double]) -> Double {
        handle(AddFn(), values)
    }
    
    func subtract(_ values: [Double]) -> Double {
        handle(SubtractFn(), values)
    }
    
    func multiply(_ values: [Double]) -> Double {
        handle(MultiplyFn(), values)
    }
    
    func divide(_ values: [Double]) -> Double {
        handle(DivideFn(), values)
    }
    
}
