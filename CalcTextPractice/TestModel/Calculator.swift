//
//  Calculator.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/20.
//

import Foundation

final class Calculator {

    func add(x: Int, y: Int) -> Int {
        return x + y
    }

    func subtract(x: Int, y: Int) -> Int {
        return x - y
    }

    func multiple(x: Int, y: Int) -> Int {
        return x * y
    }

    func division(x: Int, y: Int) -> Int {
        return x / y
    }
    
    func safeDivision(x: Int, y: Int) -> Int? {
        if y == 0 {
            return nil
        } else {
            return x / y
        }
    }

}

