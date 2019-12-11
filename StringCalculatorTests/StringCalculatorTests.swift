//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by David Bayón Alvarez on 11/12/2019.
//  Copyright © 2019 Mobgen. All rights reserved.
//

import XCTest
@testable import StringCalculator

class StringCalculatorTests: XCTestCase {

    private let sut = Calculator()
    
    private let scenarios: [(String, Int)] = [("1,2,3", 6),
                                              ("12", 12),
                                              ("", 0),
                                              ("2\n2\n5", 9)]
    
    func testGivenSumGivenAScenario() throws {
        try scenarios.forEach { (arg0) in
            let (input, result) = arg0
            let sum = try sut.add(numbers: input)
            XCTAssertEqual(sum, result)
        }
    }
    
    func testGivenNegativeNumberThenThrowException() {
        XCTAssertThrowsError(try sut.add(numbers: "-1,4"))
    }
    
    func testGivenInvalidSeparatorThenThrowException() {
        XCTAssertThrowsError(try sut.add(numbers: "1;2;4"))
    }
    
}
