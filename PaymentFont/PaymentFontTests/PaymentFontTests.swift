//
//  PaymentFontTests.swift
//  PaymentFontTests
//
//  Created by Grigory Avdyushin on 11.07.16.
//  Copyright © 2016 Grigory Avdyushin. All rights reserved.
//

import XCTest
@testable import PaymentFont

class PaymentFontTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        XCTAssertTrue(PaymentFont.preloadFont())
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(PaymentFont.Icons.usd.stringValue, "\u{f042}")
        XCTAssertEqual(PaymentFont.icon(.usd), "\u{f042}")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
