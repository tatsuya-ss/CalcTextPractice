//
//  CalcTextPracticeTests.swift
//  CalcTextPracticeTests
//
//  Created by 坂本龍哉 on 2021/10/18.
//

import XCTest
@testable import CalcTextPractice

class CalcTextPracticeTests: XCTestCase {

    func testAdd() {
        let calculator = Calculator()
        let result = calculator.add(x: 1, y: 2)
        XCTAssertEqual(result, 3)
    }
    
    func testSubtract() {
        let calculator = Calculator()
        XCTAssertEqual(calculator.subtract(x: 3, y: 1), 2)
    }
    
    func testMultiple() {
        let calculator = Calculator()
        XCTAssertEqual(calculator.multiple(x: 2, y: 3), 6)
    }
    
    func testDivisin() {
        let calculator = Calculator()
        XCTAssertEqual(calculator.division(x: 6, y: 2), 3)
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
