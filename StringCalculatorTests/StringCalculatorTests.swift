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
    
    func testSum() {
        XCTAssert(sut.add(numbers: "") == 0)
        XCTAssert(sut.add(numbers: "1") == 1)
        XCTAssert(sut.add(numbers: "1,2,3") == 6)
    }
    
}
