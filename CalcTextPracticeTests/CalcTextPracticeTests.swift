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
    
    func testSafeDivition() {
        XCTAssertEqual(calculator.safeDivision(x: 4, y: 2), 2)
        XCTAssertNil(calculator.safeDivision(x: 4, y: 0))
    }
    
    func testCatRef() {
        let cat1 = Cat()
        let cat2 = cat1
        XCTAssertTrue(cat1 === cat2)
        
        let cat3 = Cat()
        XCTAssertFalse(cat1 === cat3)
    }
    
    func testSafeDivisionRunActivity() {
        
        XCTContext.runActivity(named: "通常の割り算") { _ in
            XCTAssertEqual(calculator.safeDivision(x: 6, y: 3), 2)
            XCTAssertEqual(calculator.safeDivision(x: 6, y: 2), 3)
        }
        
        XCTContext.runActivity(named: "0除算") { _ in
            XCTAssertNil(calculator.safeDivision(x: 4, y: 0))
        }
        
    }
    
    // 間違ったテスト
    // 非同期処理完了前にテストが終了してしまう
    // 失敗のアサーションなし=成功とみなされるので、意味ないテストになる。
    func testEcho() {
        Async().echo(message: "Hello") { message in
            XCTAssertEqual(message, "Hello!!!")
            XCTFail()
        }
    }
    
    func testEchoAsync() {
        let exp: XCTestExpectation = expectation(description: "wait for finish")
        Async().echo(message: "Hello") { message in
            XCTAssertEqual(message, "Hello!!!")
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
    
}
