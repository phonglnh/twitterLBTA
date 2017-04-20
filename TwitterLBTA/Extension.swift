//
//  Extension.swift
//  TwitterLBTA
//
//  Created by PhongLe on 4/20/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit
import TRON
import SwiftyJSON

extension Collection where Iterator.Element == JSON {
    func decode<T: JSONDecodable>() throws -> [T] {
        return try map{try T(json: $0)}
    }
}

