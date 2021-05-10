//
//  ViewControllerTests.swift
//  Virtusa_TaskTests
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit
import XCTest
@testable import Virtusa_Task

class ViewControllerTests: XCTestCase {
    var vc: ViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
       super.setUp()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
         vc = storyBoard.instantiateViewController(identifier: "ViewController") as! ViewController
        _ = vc.view
        
    }
    
    func testViewDidLoad() {
        XCTAssertNotNil(vc.viewDidLoad())
    }
    
    func testRegisterCell() {
        XCTAssertNotNil(vc.registerCell())
    }
    
    func testSetUpActivityIndicatorView() {
        XCTAssertNotNil(vc.setUpActivityIndicatorView())
    }
    
    func testShowLoadingIndicator() {
        XCTAssertNotNil(vc.showLoadingIndicator())
    }
    
    func testFetchPostCommentsAPI() {
        XCTAssertNotNil(vc.fetchPostCommentsAPI())
    }
    
    func testHideLoadingIndicator() {
        XCTAssertNotNil(vc.hideLoadingIndicator())
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
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
