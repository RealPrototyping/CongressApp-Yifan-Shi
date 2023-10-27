//
//  NewsFeed.swift
//  TestNewsAPI
//
//  Created by Yifan Shi on 10/22/23.
//

import Foundation

struct NewsFeed: Codable {
    
    var status: String = ""
    var totalResults: Int = 0
    var articles:[Article]?
    
}
