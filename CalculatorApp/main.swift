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

func quit() {
    exit(0)
}

func help() {
    print("Commands: add, subtract, multiply, divide, history or help")
}

func add() {
    let result = calculator.add(gatherNumbers())
    print("Result: \(result)")
}

func subtract() {
    let result = calculator.subtract(gatherNumbers())
    print("Result: \(result)")
}

func divide() {
    let result = calculator.divide(gatherNumbers())
    print("Result: \(result)")
}

func multiply() {
    let result = calculator.multiply(gatherNumbers())
    print("Result: \(result)")
}

func history() {
    print("History: \(calculator.history.joined(separator: "\n"))")
}

let commands = [
    "quit": quit,
    "help": help,
    "add": add,
    "subtract": subtract,
    "divide": divide,
    "multiply": multiply,
    "history": history,
]

while(true) {
    print("Function? ", terminator: "")     // Print function without a new line
    let input = readLine()?.lowercased()    // Gather user input
    
    guard let inputStr = input else {
        continue;
    }
    
    if let fn = commands[inputStr] {
        fn()
    } else {
        print("Unexpected function: \(inputStr). Try help!")
    }
}

