//
//  PostCommentsViewModelTests.swift
//  Virtusa_TaskTests
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit
import XCTest
@testable import Virtusa_Task

class PostCommentsViewModelTests: XCTestCase {
    var viewModel: PostCommentsViewModel!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        viewModel = nil
    }
    func testGetPosts() {
        weak var expect = expectation(description: "testing for Web Services")
        viewModel.fetchPostComments(url: ServiceUrl.postsURL, completionHandler: { (success, _) in
            if success {
                XCTAssertTrue(success)
            } else {
                XCTAssertEqual(success, false)
            }
            expect?.fulfill()
            expect = nil
        }) { (failure, _) in
            XCTAssertEqual(failure, false)
            expect?.fulfill()
            expect = nil
        }

        waitForExpectations(timeout: 60) { error in
            if let error = error {
                XCTFail("waitForExpectationsWithTimeout errored: \(error)")
            }
        }
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
