//
//  Article.swift
//  TestNewsAPI
//
//  Created by Yifan Shi on 10/22/23.
//

import Foundation

struct Article: Identifiable, Codable {
    var id: String { url ?? UUID().uuidString }
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
    
}
