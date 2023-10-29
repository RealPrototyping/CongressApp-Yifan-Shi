//
//  ShowView.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/29/23.
//

import SwiftUI

import SwiftUI

struct ShowView: View {
    @StateObject var viewModel = Show()
    @State var baseURL = "https://image.tmdb.org/t/p/w500"
    var body: some View {
        VStack {
            if let mov = viewModel.mediaFeed?.results {
                List(mov) { movi in
                    VStack(alignment: .leading) {
                        Text(movi.name ?? "Unknown title")
                        AsyncImage(url: URL(string: (baseURL+(movi.backdrop_path ?? "")))) {image in
                            image.resizable().scaledToFit().cornerRadius(8)
                        } placeholder: {
                            ProgressView()
                        }
                        DateView(dateString: movi.first_air_date ?? "")
                        
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
    ShowView()
}
