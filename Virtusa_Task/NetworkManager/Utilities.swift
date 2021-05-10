//
//  Utilities.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit
/// Date Helper Methods


/// Class Description of Utilities
class Utilities: NSObject {
    
    class func convertToDict(data: Data?) -> [String: AnyObject]? {
        do {
            if let data = data {
                return try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: AnyObject]
            }
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
    
    /// MARK:- Json Configure Methods
    class func setUpJsonFile(jsonFileName: String?) -> Data? {
        if let path = Bundle.main.path(forResource: jsonFileName, ofType: "json") {
            do {
                return try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped) as Data
            } catch let error {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}
