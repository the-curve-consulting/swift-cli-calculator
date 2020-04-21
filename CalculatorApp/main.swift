//
//  main.swift
//  CalculatorApp
//
//  Created by Paul Ridgway on 21/04/2020.
//  Copyright © 2020 5052. All rights reserved.
//

import Foundation


while(true) {
    print("Function? ", terminator: "")     // Print function without a new line
    let input = readLine()?.lowercased()    // Gather user input
    
    if (input == "quit") {
        exit(0)
    } else if (input == "help") {
        print("Commands: add, subtract, multiply, divide, history or help")
    }
}

