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
    
    func testWhenMoreThanOneNumber() {
        XCTAssert(sut.add(numbers: "1,2,3") == 6)
    }
    
    func testWhenStringHasOnlyOneNumberThenReturnThatNumber() {
        XCTAssert(sut.add(numbers: "12") == 12)
    }
    
    func testWhenEmptyStringThenReturnZero() {
        XCTAssert(sut.add(numbers: "") == 0)
    }
    
}
