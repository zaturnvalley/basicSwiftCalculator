//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Zachary Mason on 11/21/16.
//  Copyright © 2016 Zach Mason. All rights reserved.
//

import Foundation

enum Optional<T> {
    case None
    case Some(T)
}
class CalculatorBrain
{
    private var accumulator = 0.0
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    var operations: Dictionary<String,Operation> = [
        "π" : Operation.Constant(M_PI),
        "e" : Operation.Constant(M_E),
        "√" : Operation.UnaryOperation,
        "cos" : Operation.UnaryOperation
        
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value): accumulator = value
            case .UnaryOperation: break
            case .BinaryOperation: break
            case .Equals: break
            }
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}
