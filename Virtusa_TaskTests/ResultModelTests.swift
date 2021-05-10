//
//  ResultModelTests.swift
//  Virtusa_TaskTests
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit
import XCTest
@testable import Virtusa_Task

class ResultModelTests: XCTestCase {

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testPostCommentsModel() {
        let model = ResultModel(name: "Ravi", email: "test@gmail.com", body: "testbhbhdbvvuuvbbvvuyevb", postId: 1, id: 0)
        XCTAssertNotNil(model)
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
