//
//  UpFeed.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/29/23.
//


import Foundation

struct UpFeed: Codable {
    var page: Int
    var results: [UpIdentifier]
}
