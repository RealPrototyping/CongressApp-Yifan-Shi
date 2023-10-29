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
                Color(.white)
                    .ignoresSafeArea()
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
                            Text("     ")
                            Spacer()
                            Text("Aperture")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                                
                            Spacer()
                            NavigationLink(destination: SettingsView()) {
                                Image(systemName: "doc.plaintext.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 20)
                                    .foregroundColor(.black)
                                    .shadow(radius: 10)
                            }
                        }
                        .padding()
                        NavigationLink(destination: UpcomingView()){
                                                            VStack(){
                                                                Text("Upcoming")
                                                                    .font(.title2)
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(Color.white)
                                                                Image("upcomingtitle")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fit)
                                                                    .cornerRadius(10)
                                                            }
                                                            .padding()
                                                            .background(Rectangle().foregroundColor(.red)
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
                                                                Image("releasedstock")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fit)
                                                                    .cornerRadius(10)
                                                            }
                                                            .padding()
                                                            .background(Rectangle().foregroundColor(.mint)
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
                                                            .background(Rectangle().foregroundColor(.orange)
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
                                                            .background(Rectangle().foregroundColor(.green)
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
