//
//  CommentViewControllerTests.swift
//  Virtusa_TaskTests
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit
import XCTest
@testable import Virtusa_Task

class CommentViewControllerTests: XCTestCase {
    var vc: CommentViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
         vc = storyBoard.instantiateViewController(identifier: "CommentViewController") as! CommentViewController
        _ = vc.view
    }
    
    func testViewDidLoad() {
        XCTAssertNotNil(vc.viewDidLoad())
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        vc = nil
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
