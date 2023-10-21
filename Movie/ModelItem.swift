//
//  ModelItem.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import Foundation

struct ModelItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var type: String
    var imageName : String
    var date: String
}
