//
//  Tweet.swift
//  Twitter
//
//  Created by Guilherme Souza on 09/12/16.
//  Copyright © 2016 Guilherme Souza. All rights reserved.
//

import Foundation

struct Tweet {
    
    var id: String?
    var displayName: String?
    var username: String?
    var userProfileImageURL: String?
    var postedAt: Date?
    var message: String?
    var associatedImageMessageURL: String?
    
    init(json: [String: Any]) {
        id = json["id"] as? String
        displayName = json["displayName"] as? String
        username = json["username"] as? String
        userProfileImageURL = json["userProfileImageURL"] as? String
        if let postedAtTimeInterval = json["postedAt"] as? TimeInterval {
            postedAt = Date(timeIntervalSince1970: postedAtTimeInterval)
        }
        message = json["message"] as? String
        associatedImageMessageURL = json["associatedImageMessageURL"] as? String
    }
    
}
