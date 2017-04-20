//
//  Service.swift
//  TwitterLBTA
//
//  Created by PhongLe on 4/20/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit
import TRON
import SwiftyJSON

struct Service {
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    static let sharedInstance = Service()
    
    func fetchHomeFeed(completion: @escaping (HomeDataSource?, Error?) -> ()) {
        let request: APIRequest<HomeDataSource, JSONError> = tron.request("/twitter/home")
        request.perform(withSuccess: { (homeDataSource) in
            completion(homeDataSource, nil)
        }) { (err) in
            completion(nil, err)
        }
    }
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("JSON ERROR")
        }
    }
}
