//
//  QueryView.swift
//  TestSearch
//
//  Created by Yifan Shi on 10/29/23.
//

import SwiftUI

struct QueryView: View {
    @StateObject var viewModel = Search()
    @State var baseURL = "https://image.tmdb.org/t/p/w500"
    @State var inp: String
    var body: some View {
         
        VStack {
            if let mov = viewModel.mediaFeed?.results {
                List(mov) { movi in
                    VStack(alignment: .leading) {
                        Text(movi.original_title ?? "Unknown title")
                        AsyncImage(url: URL(string: (baseURL+(movi.backdrop_path ?? "")))) {image in
                            image.resizable().scaledToFit().cornerRadius(8)
                        } placeholder: {
                            ProgressView()
                        }
                        DateView(dateString: movi.release_date ?? "")
                        
                    }
                    
                    
                    Spacer()
                }
                
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            viewModel.getResponse(userInput: inp)
        }
    }
}

