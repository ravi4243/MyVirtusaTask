//
//  NameEmailTableViewCellTests.swift
//  Virtusa_TaskTests
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit
import XCTest
@testable import Virtusa_Task

class NameEmailTableViewCellTests: XCTestCase {
    var testTable = UITableView()
    var cell = NameEmailTableViewCell()
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        testTable.register(NameEmailTableViewCell.self, forCellReuseIdentifier:String(describing: NameEmailTableViewCell.self))
        
        let bundle = Bundle(for: NameEmailTableViewCell.self)
        guard let customCell = bundle.loadNibNamed("NameEmailTableViewCell", owner: nil)?.first as? NameEmailTableViewCell else {
            return XCTFail("AuthorizationTableViewCell nib did not contain a UIView")
        }
        
        cell = customCell
    }
    
    func testSetSelected() {
        XCTAssertNotNil(cell.setSelected(true, animated: true))
    }
    
    func testConfigureCell() {
        XCTAssertNotNil(cell.configureCell(model: ResultModel(name: "Ravi", email: "test@gmail.com", body: "testbhbhdbvvuuvbbvvuyevb", postId: 1, id: 0)))
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
}
