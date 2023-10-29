//
//  MovieStub.swift
//  Movie
//
//  Created by Yifan Shi on 10/27/23.
//

import Foundation
    
extension TMDBMovie {
    
    static var stubbedMovies: [TMDBMovie] {
        let response: MediaResponse? = try? Bundle.main.loadAndDecodeJSON(filename: "jsonvalidator")
        return response!.movieResults
    }
    
    static var stubbedMovie: TMDBMovie {
        stubbedMovies[0]
    }
}

extension Bundle {
    func loadAndDecodeJSON<D: Decodable>(filename: String) throws -> D? {
        guard let url = self.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        let data = try Data(contentsOf: url)
        let jsonDecoder = Utils.jsonDecoder
        let decodedModel = try jsonDecoder.decode(D.self, from: data)
        return decodedModel
    }
}
