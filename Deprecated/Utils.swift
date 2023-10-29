//
//  Utils.swift
//  Movie
//
//  Created by Yifan Shi on 10/27/23.
//

import Foundation

class Utils {
    static let jsonDecoder: JSONDecoder = {
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
        return jsonDecoder
    }()
    
    static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        return dateFormatter
    }()
}
