//
//  Project39UITests.swift
//  Project39UITests
//
//  Created by Diego A. Perez Pares on 10/18/23.
//

import XCTest

final class Project39UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitialStateIsCorrect() {
        XCUIApplication().activate() // had to put this because of error keeps appearing
        let table = XCUIApplication().tables
        XCTAssertEqual(table.cells.count, 7, "There should be 7 rows initially")
    }
    
    func testUserFilteringByString() {
        XCUIApplication().activate() // had to put this because of error keeps appearing
        
        let app = XCUIApplication()
        app.buttons["Search"].tap()

        let filterAlert = app.alerts
        let textField = filterAlert.textFields.element
        textField.typeText("test")

        filterAlert.buttons["Filter"].tap()

        XCTAssertEqual(app.tables.cells.count, 56, "There should be 56 words matching 'test'")
                
    }
}
