//
//  Tweet.swift
//  TwitterLBTA
//
//  Created by PhongLe on 4/19/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit
import TRON
import SwiftyJSON

struct Tweet: JSONDecodable {
    
    let user: User
    let message: String
    
    init(json: JSON) {
        let userJson = json["user"]
        self.user = User(json: userJson)
        self.message = json["message"].stringValue
    }
    
}
