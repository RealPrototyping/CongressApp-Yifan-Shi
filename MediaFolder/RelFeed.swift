//
//  RelFeed.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/29/23.
//

import Foundation

struct RelFeed: Codable {
    var page: Int
    var results: [RelIdentifier]
}
