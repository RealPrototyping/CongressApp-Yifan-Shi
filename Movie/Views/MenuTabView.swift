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
            ShowsView()
                .tabItem {
                    Label("Shows", systemImage: "tv.fill")
                }
            MoviesView()
                .tabItem {
                    Label("Movies", systemImage: "movieclapper.fill")
                }
            MainView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
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
