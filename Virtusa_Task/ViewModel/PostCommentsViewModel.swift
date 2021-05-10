//
//  PostCommentsViewModel.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit

class PostCommentsViewModel: NSObject {
    var model: [ResultModel?] = []

    /// - Parameters:
    ///   - completionHandler: success handler
    ///   - failureHandler: failure handler
    func fetchPostComments(url: String, completionHandler: @escaping SuccessDataClosure, failureHandler: @escaping FailureClosure) {

        PostCommentsServiceManager.getPostCommentsServiceCall(url: url, completionHandler: { (true, data) in
            
            if let responseData = CustomJSONDecoder.decodeResponseModelArrayObject(model: ResultModel.self, data: data) {
                
                self.model = responseData
                completionHandler(true, data)
            } else {
                failureHandler(false, "")
            }
            
            
        }, failureHandler: {_,_ in
            failureHandler(false, "")
        })
        }
    
}



