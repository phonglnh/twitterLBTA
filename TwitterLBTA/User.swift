//
//  User.swift
//  TwitterLBTA
//
//  Created by PhongLe on 4/18/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit
import TRON
import SwiftyJSON

struct User: JSONDecodable {
    let name: String
    let username: String
    let bioText: String
    let profileImageUrl: String
    
    init(json: JSON) {
        self.name = json["name"].stringValue
        self.username = json["username"].stringValue
        self.bioText = json["bio"].stringValue
        self.profileImageUrl = json["profileImageUrl"].stringValue
    }
}
