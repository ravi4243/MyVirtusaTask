//
//  GenericMethods.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit

protocol Serializable: Codable {
    func serialize() -> Data?
}

extension Serializable {
    /// Json Encoder for the ecoding the data
    func serialize() -> Data? {
        let encoder = JSONEncoder()
        return try? encoder.encode(self)
    }
}

/// GenericMethods Class description
class GenericMethods: NSObject {
    
    /// finalValues
    ///
    /// - Parameters:
    ///   - responseArray: Array Object
    ///   - responseArrayModel:
    ///   - limit: Limit (Int Value)
    /// - Returns: Array
    class func finalValues<T>(_ responseArray: [T]?, _ responseArrayModel: T.Type, _ limit: Int?) -> [T] {
        var updatedList = [T]()
        if let responseList = responseArray, let limitValue = limit {
            for (index, eachImmunization) in responseList.enumerated() where index < limitValue {
                updatedList.append(eachImmunization)
            }
        }
        return updatedList
    }
}

/// CustomJSONDecoder
class CustomJSONDecoder: JSONDecoder {
    
    /// Helps in decoding the data to model object array
    class func decodeResponseModelArrayObject<T: Serializable>(model: T.Type, data: Data?) -> [T]? {
        do {
            if let dataForParsing = data {
                /// Decoding
                let responseData = try JSONDecoder().decode([T].self, from: dataForParsing)
                return responseData
            }
            return nil
        } catch let error {
            print(error)
            return nil
        }
    }
    
    ///  Helps in decoding the data to model object
    ///
    /// - Parameters:
    ///   - model: Any Serializable Model
    ///   - data: Data Object
    /// - Returns: Generic Type
    class func decodeResponseModelObject<T: Serializable>(model: T.Type, data: Data?) -> T? {
        do {
            if let dataForParsing = data {
                // Decoding from data
                let responseData = try JSONDecoder().decode(T.self, from: dataForParsing)
                return responseData
            }
            return nil
        } catch let error {
            print(error)
            return nil
        }
    }
}
