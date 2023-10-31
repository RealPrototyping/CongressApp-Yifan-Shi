//
//  TabView.swift
//  Movie
//
//  Created by Yifan Shi on 10/26/23.
//

import SwiftUI

struct MenuTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            ShowsView()
                .tabItem {
                    Label("Shows", systemImage: "tv.fill")
                }
            MoviesView()
                .tabItem {
                    Label("Movies", systemImage: "film.fill")
                }
            UserSearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass.circle.fill")
                }
            NewsView()
                .tabItem {
                    Label("News", systemImage: "newspaper.fill")
                    
                }
            
            
        }
        
    }
}

#Preview {
    MenuTabView()
}
