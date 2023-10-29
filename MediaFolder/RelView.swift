//
//  RelView.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/29/23.
//

import SwiftUI

struct RelView: View {
    @StateObject var viewModel = Rel()
    @State var baseURL = "https://image.tmdb.org/t/p/w500"
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
            viewModel.getResponse()
        }
    }
}


#Preview {
    RelView()
}
