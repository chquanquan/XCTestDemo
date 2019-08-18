//
//  XCTestDemoTests.swift
//  XCTestDemoTests
//
//  Created by chquanquan on 2019/8/17.
//  Copyright © 2019 chquanquan. All rights reserved.
//

import XCTest
@testable import XCTestDemo

class XCTestDemoTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let viewController = ViewController()
        let sectionNumber = viewController.numberOfSectionInTableView()
        XCTAssert(sectionNumber == 3)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            for index in 0..<1000 {
                print("test: \(index)")
            }
        }
    }

}
