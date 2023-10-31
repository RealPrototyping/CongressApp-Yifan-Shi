//
//  ContentView.swift
//  Movie
//
//  Created by Yifan Shi on 10/18/23.
//

import SwiftUI



struct HomeView: View {
    @State private var searchText = ""
    @State private var items: [Item] = []
    @State private var isUserAddTitlePresented = false
    let movie1 = TMDBMovie.self
    var body: some View {
        NavigationView {
            
            ZStack {
                ScrollView {
                    VStack {
                        HStack {
                            /*Button(action: {
                             isUserAddTitlePresented = true
                             }) {
                             Image(systemName: "plus")
                             }
                             .sheet(isPresented: $isUserAddTitlePresented) {
                             UserAddTitle(items: $items, isPresented: $isUserAddTitlePresented)
                             }*/ //Impossible to implement at the moment
                            Spacer()
                            Image("logofinal")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 50)
                                .cornerRadius(10)
                                .opacity(0.9)
                                
                            Spacer()
                            
                            Text("a p e r t u r e")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(red: 0.0784313725490196, green: 0.32941176470588235, blue: 0.38823529411764707))
                                .multilineTextAlignment(.center)
                            
                                
                            Spacer()
                            ZStack {
                                NavigationLink(destination: SettingsView()) {
                                    Image(systemName: "doc.plaintext.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 20)
                                        .foregroundColor(Color(.gray))
                                        
                                }
                            }
                            .frame(width:50)
                            Spacer()
                        }
                        .padding()
                        
                        NavigationLink(destination: UpcomingView()){
                                                            VStack(){
                                                                Text("Upcoming")
                                                                    .font(.title2)
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(Color.white)
                                                                Image("upcomingstock")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fit)
                                                                    .cornerRadius(10)
                                                            }
                                                            .padding()
                                                            .background(Rectangle().foregroundColor(.green)
                                                                .cornerRadius(15)
                                                                .shadow(radius: 10))
                                                            .frame(maxWidth: .infinity)
                                                            .padding()
                                                        }
                        
                        
                        NavigationLink(destination: ReleasedView()) //replacewithreleased)
                        {
                                                            VStack {
                                                                Text("Released")
                                                                    .font(.title2)
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(Color.white)
                                                                Image("releasedfinal")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fit)
                                                                    .cornerRadius(10)
                                                                    
                                                            }
                                                            .padding()
                                                            .background(Rectangle().foregroundColor(.orange)
                                                                .cornerRadius(15)
                                                                .shadow(radius: 10))
                                                            .frame(maxWidth: .infinity) // Expand to fill the available width
                                                            .padding()
                                                        }
                        NavigationLink(destination: MoviesView()){
                                                            VStack {
                                                                Text("Movies")
                                                                    .font(.title2)
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(Color.white)
                                                                Image("moviestock")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fit)
                                                                    .cornerRadius(10)
                                                            }
                                                            .padding()
                                                            .background(Rectangle().foregroundColor(Color(.systemMint))
                                                                .cornerRadius(15)
                                                                .shadow(radius: 10))
                                                            .frame(maxWidth: .infinity) // Expand to fill the available width
                                                            .padding()
                                                        }
                        NavigationLink(destination: ShowsView()){
                                                            VStack {
                                                                Text("Shows")
                                                                    .font(.title2)
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(Color.white)
                                                                Image("showstock")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fit)
                                                                    .cornerRadius(10)
                                                            }
                                                            .padding()
                                                            .background(Rectangle().foregroundColor(.red)
                                                                .cornerRadius(15)
                                                                .shadow(radius: 10))
                                                            .frame(maxWidth: .infinity) // Expand to fill the available width
                                                            .padding()
                                                        }
                        
                        
                        
                        }
                    }
                    .padding(.bottom, 10)
            }
            
        }
    }
        
        struct SettingsView: View {
            var body: some View {
                // Add your settings content here
                VStack(){
                    Text("Information")
                    Text("")
                    Text("This application allows users to browse the release dates of movies and shows they plan on watching as well as help users discover new movies or shows they may be interested in.")
                        .padding()
                    Text("This product uses the Newsapi.org API but is not endorsed or certified by Newsapi.org")
                    Text("This product uses the TMDB API but is not endorsed or certified by TMDB.")
                        .padding()
                    
                    Image("tmdblogo")
                    Spacer()
                }
                
            }
        }
        
    }

#Preview {
    HomeView()
}
