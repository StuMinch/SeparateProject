//
//  SeparateProjectUITests.swift
//  SeparateProjectUITests
//
//  Created by Stuart Minchington on 4/28/23.
//

import XCTest

final class SeparateProjectUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
      try super.setUpWithError()
      continueAfterFailure = false

      app = XCUIApplication(bundleIdentifier: "com.example.apple-samplecode.Scrumdinger")
      app.launch()
    }

    func testAddingScrumWithDefaultValues() throws {
        app.navigationBars["Daily Scrums"]/*@START_MENU_TOKEN@*/.buttons["New Scrum"]/*[[".otherElements[\"New Scrum\"].buttons[\"New Scrum\"]",".buttons[\"New Scrum\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.collectionViews/*@START_MENU_TOKEN@*/.textFields["Title"]/*[[".cells.textFields[\"Title\"]",".textFields[\"Title\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.collectionViews.textFields["Title"].typeText("UI Test Scrum")
        app.buttons["Add"].tap()
        XCTAssertTrue(app.staticTexts["UI Test Scrum"].exists)
    }
}
