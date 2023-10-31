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
                            Text(movi.original_title ?? "Unknown title")
                            AsyncImage(url: URL(string: (baseURL+(movi.backdrop_path ?? "")))) { image in
                                image.resizable().scaledToFit().cornerRadius(8)
                            } placeholder: {
                                ProgressView()
                            }
                            DateView(dateString: movi.release_date ?? "")
                        }
                        .onTapGesture {
                            withAnimation {
                                self.selectedTitle = movi.original_title  // Update the title
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
            viewModel.getResponse(userInput: inp)
        }
    }
}
struct YourSlidingView: View {
    var theTitle: String?
    var theOverView: String?
    var theRating: Double?
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.blue.opacity(0.1))
                .frame(height: 350) // Adjust this value to fit your content
                .ignoresSafeArea()
            VStack {
                Spacer()
                ScrollView {
                    VStack {
                        Text("")
                        Text("")
                        Text(theTitle ?? "")
                            .font(.title2)
                            .fontWeight(.bold)
                        ZStack {
                            if (Int(theRating ?? 0.0) <= 10 && Int(theRating ?? 0.0) >= 7) {
                                Rectangle().fill(Color.green)
                                    .frame(width: 100)
                                    .cornerRadius(10)
                                    .shadow(radius:10)
                                    
                            }
                            else if (Int(theRating ?? 0.0) < 7 && Int(theRating ?? 0.0) >= 4) {
                                Rectangle().fill(Color.yellow)
                                    .frame(width: 100)
                                    .cornerRadius(10)
                                    .shadow(radius:10)
                            }
                            else {
                                Rectangle().fill(Color.red)
                                    .frame(width: 100)
                                    .cornerRadius(10)
                                    .shadow(radius:10)
                            }
                            Text(String(Int(theRating ?? 0.0)) + "*")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        Text(theOverView ?? "No description given.")
                            .padding()
                        
                        Text("Aggregated Score is from TMDb's User Rating*")
                        
                    }
                    .foregroundStyle(Color.black)
                }
                
            }
        }
    }
}
