//
//  XCTestDemoUITests.swift
//  XCTestDemoUITests
//
//  Created by chquanquan on 2019/8/17.
//  Copyright © 2019 chquanquan. All rights reserved.
//

import XCTest

class XCTestDemoUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let uitestButton = app.navigationBars["Unit Test"].buttons["UITest"]
        XCTAssertNotNil(uitestButton)
        uitestButton.tap()
        
        let tablesQuery = app.tables
        XCTAssert(tablesQuery.cells.count == 1)
        
        let uitestNavigationBar = app.navigationBars["UITest"]
        let editButton = uitestNavigationBar.buttons["Edit"]
        XCTAssertNotNil(editButton)
        editButton.tap()
        
        let insertCellNumber1Button = tablesQuery/*@START_MENU_TOKEN@*/.buttons["Insert cell number 1"]/*[[".cells.buttons[\"Insert cell number 1\"]",".buttons[\"Insert cell number 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertNotNil(insertCellNumber1Button)
        insertCellNumber1Button.tap()
        insertCellNumber1Button.tap()
        insertCellNumber1Button.tap()
        
        XCTAssert(tablesQuery.cells.count == 4)
        
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["cell number 1"]/*[[".cells.staticTexts[\"cell number 1\"]",".staticTexts[\"cell number 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let unitTestButton = uitestNavigationBar.buttons["Unit Test"]
        XCTAssertNotNil(unitTestButton)
        unitTestButton.tap()
        uitestButton.tap()
        editButton.tap()
        unitTestButton.tap()
        
    }

}
