//
//  UtilitiesTests.swift
//  Virtusa_TaskTests
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit
import XCTest
@testable import Virtusa_Task

class UtilitiesTests: XCTestCase {

    
    override func setUpWithError() throws {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Test Cases for ConvertToDict Validations.
    func testConvertToDictForNil() {
        let data = Utilities.setUpJsonFile(jsonFileName: "invalidJson")
        XCTAssertNil(Utilities.convertToDict(data: data))
    }
    func testConvertToDictForNotNil() {
        let data = Utilities.setUpJsonFile(jsonFileName: "Posts")
        XCTAssertNotNil(Utilities.convertToDict(data: data))
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
