//
//  PostCommentsServiceManager.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit

typealias SuccessClosure = (_ status: Bool, _ message: String?) -> Void
typealias FailureClosure = (_ status: Bool, _ message: String?) -> Void
typealias SuccessDataClosure = (_ status: Bool, _ data: Data?) -> Void

enum ServiceType: String {
    case GET

}

class PostCommentsServiceManager: NSObject {

    
    // MARK: - VALIDATE POST COMMENTS SERVICE
    class func getPostCommentsServiceCall(url: String, completionHandler: @escaping SuccessDataClosure, failureHandler: @escaping FailureClosure) {
        
        guard let serviceUrl = URL(string: url) else { return }

        /// URLSession object created with nil delegate
        let session = URLSession.shared

        let request: NSURLRequest = NSURLRequest(url: serviceUrl)
        
        session.dataTask(with: request as URLRequest) { (data, response, error) in
               if let response = response {
                   print(response)
               }
               if let data = data {
                   do {
                       let json = try JSONSerialization.jsonObject(with: data, options: [])
                       print(json)
                    completionHandler(true, data)
                   } catch {
                       print(error)
                    failureHandler(false, error.localizedDescription)
                   }
               }
           }.resume()
    }
}
