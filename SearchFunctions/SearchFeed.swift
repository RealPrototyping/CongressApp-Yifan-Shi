//
//  SearchFeed.swift
//  TestSearch
//
//  Created by Yifan Shi on 10/29/23.
//

import Foundation

struct SearchFeed: Codable {
    var page: Int
    var results: [SearchIdentifier]
}
