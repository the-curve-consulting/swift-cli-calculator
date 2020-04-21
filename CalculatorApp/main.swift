//
//  main.swift
//  CalculatorApp
//
//  Created by Paul Ridgway on 21/04/2020.
//  Copyright © 2020 5052. All rights reserved.
//

import Foundation

let calculator = Calculator()

func gatherNumbers() -> [Double] {
    print("Enter numbers one at a time, leave blank to finish?")
    
    var numbers = Array<Double>()
    while(true) {
        let input = readLine()
        guard let inputStr = input else {
            break;
        }
        guard let number = Double(inputStr) else {
            break
        }
        numbers.append(number)
    }
    return numbers
}

while(true) {
    print("Function? ", terminator: "")     // Print function without a new line
    let input = readLine()?.lowercased()    // Gather user input
    
    if (input == "quit") {
        exit(0)
    } else if (input == "help") {
        print("Commands: add, subtract, multiply, divide, history or help")
    } else if (input == "add") {
        let result = calculator.add(gatherNumbers())
        print("Result: \(result)")
    } else if (input == "subtract") {
        let result = calculator.subtract(gatherNumbers())
        print("Result: \(result)")
    } else if (input == "divide") {
        let result = calculator.divide(gatherNumbers())
        print("Result: \(result)")
    } else if (input == "multiply") {
        let result = calculator.multiply(gatherNumbers())
        print("Result: \(result)")
    } else {
        print("Unexpected function, try help!")
    }
}

