//
//  Show.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/29/23.
//


import UIKit

import Foundation

class Show: ObservableObject {
    @Published var mediaFeed: ShowFeed?
    
    func getResponse() {
        let headers = [
          "accept": "application/json",
          "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MzUxNGY4OTUxYTE1OThhNzRmNWYzZWQ1ZmQwODIzZCIsInN1YiI6IjY1MzM3MzlhYTBiZTI4MDBjNTY4MjQ3NCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4TMwOp3NPb7s9idiDK7axOYm1hWZ2vulLJmjlDGoKRw"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/tv/popular?language=en-US&page=1")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if let safeData = data {
                let decoder = JSONDecoder()
                if let decodedData = try? decoder.decode(ShowFeed.self, from: safeData) {
                    DispatchQueue.main.async {
                        self.mediaFeed = decodedData
                        
                        
                    }
                }
                else {
                    print("error1")
                    print(safeData)
                }
            }
            
        })

        dataTask.resume()
    }
    

}
