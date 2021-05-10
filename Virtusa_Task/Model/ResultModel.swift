//
//  ResultModel.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit

class ResultModel: Serializable {
    let email :String?
    let name :String?
    let postId :Int?
    let id :Int?
    let body:String?
    
    init(name:String, email:String, body:String, postId: Int, id: Int) {
        self.name = name
        self.email = email
        self.body = body
        self.postId = postId
        self.id = id

    }

}
