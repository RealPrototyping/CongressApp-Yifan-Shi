//
//  ShowView.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/29/23.
//

import SwiftUI

import SwiftUI

import SwiftUI

struct ShowView: View {
    @StateObject var viewModel = Show()
    @State var baseURL = "https://image.tmdb.org/t/p/w500"
    @State private var isViewVisible = false
    @State private var selectedTitle: String?  // New state property for the title
    @State private var selectedOverview: String?
    @State private var selectedRating: Double?
    var body: some View {
        ZStack {
            VStack {
                if let mov = viewModel.mediaFeed?.results {
                    List(mov) { movi in
                        VStack(alignment: .leading) {
                            Text(movi.name ?? "Unknown title")
                            AsyncImage(url: URL(string: (baseURL+(movi.backdrop_path ?? "")))) { image in
                                image.resizable().scaledToFit().cornerRadius(8)
                            } placeholder: {
                                ProgressView()
                            }
                            DateView(dateString: movi.first_air_date ?? "")
                        }
                        .onTapGesture {
                            withAnimation {
                                self.selectedTitle = movi.name  // Update the title
                                self.selectedOverview = movi.overview
                                self.selectedRating = movi.vote_average
                                self.isViewVisible.toggle()
                            }
                        }
                    }
                } else {
                    Text("Loading...")
                }
            }
            .blur(radius: isViewVisible ? 10 : 0)  // Blur the content when the sliding view is visible

            if isViewVisible {
                YourSlidingView(theTitle: selectedTitle, theOverView: selectedOverview, theRating: selectedRating)
                    .transition(.opacity)  // Fade transition
                    .frame(width: UIScreen.main.bounds.width - 40, height: 300)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .onTapGesture { }  // Empty onTapGesture to capture taps on the sliding view
                    .background(
                        Color.black.opacity(0.5).onTapGesture {  // Semi-transparent background to indicate focus
                            withAnimation {
                                self.isViewVisible = false
                            }
                        }
                    )
                    .cornerRadius(10)
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
