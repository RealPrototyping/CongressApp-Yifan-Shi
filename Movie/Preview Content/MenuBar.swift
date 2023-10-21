//
//  MenuBar.swift
//  Movie
//
//  Created by Yifan Shi on 10/20/23.
//

import SwiftUI

struct MenuBar: View {
  @State private var selection: Tab = .home
    @State private var isPresentingFullView1 = false
    @State private var isPresentingFullView2 = false
    @State private var isPresentingFullView3 = false
  enum Tab {
    case shows, home, movies, profile
  }

  var body: some View {
    TabView(selection: $selection) {
      // Shows Tab
        ShowsView()
        .tabItem {
          Label("Shows", systemImage: "tv")
        }
        .tag(Tab.shows)

      // Main Tab
      Text("")
        .tabItem {
          Label("Main", systemImage: "house")
        }
        .tag(Tab.home)

      // Movies Tab
      MoviesView()
        .tabItem {
          Label("Movies", systemImage: "film")
        }
        .tag(Tab.movies)

      // Profile Tab
      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "person")
        }
        .tag(Tab.profile)
    }
  }
}
struct MainTabView: View {
  var body: some View {
    MainView()
  }
}
