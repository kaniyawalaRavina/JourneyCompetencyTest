//
//  Comments.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//

import Foundation
import Foundation
import ObjectMapper

class Comments: Mappable {
   
    var id: Int?
    var postId: Int?
    var name: String?
    var email: String?
    var body: String?
   
    required init?(map: Map) {
        mapping(map: map)
    }

    func mapping(map: Map) {
    id <- map["id"]
    postId <- map["postId"]
    name <- map["name"]
    email <- map["email"]
    body <- map["body"]
    }
}
