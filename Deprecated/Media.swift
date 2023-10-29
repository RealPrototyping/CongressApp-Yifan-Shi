//
//  Media.swift
//  Movie
//
//  Created by Yifan Shi on 10/27/23.
//

import Foundation

struct MediaResponse: Decodable {
    let movieResults: [TMDBMovie]
    let showResults: [TMDBShow]
    
}

struct TMDBMovie: Decodable {
    let id: Int
    let originalTitle: String
    let posterPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    
}
struct TMDBShow: Decodable {
    
}
