//
//  CalcTextPracticeTests.swift
//  CalcTextPracticeTests
//
//  Created by 坂本龍哉 on 2021/10/18.
//

import XCTest
@testable import CalcTextPractice

final class CalcTextPracticeTests: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        self.calculator = Calculator()
    }
    
    func testAdd() {
        XCTAssertEqual(calculator.add(x: 1, y: 2), 3)
    }
    
    func testSubtract() {
        XCTAssertEqual(calculator.subtract(x: 3, y: 1), 2)
    }
    
    func testMultiple() {
        XCTAssertEqual(calculator.multiple(x: 2, y: 3), 6)
    }
    
    func testDivisin() {
        XCTAssertEqual(calculator.division(x: 6, y: 2), 3)
    }
    
}
