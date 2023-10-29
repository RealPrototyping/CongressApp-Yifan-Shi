//
//  MediaFeed.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/28/23.
//

import Foundation

struct PopFeed: Codable {
    var page: Int
    var results:[PopIdentifier]?
}
