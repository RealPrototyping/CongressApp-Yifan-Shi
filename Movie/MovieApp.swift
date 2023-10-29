//
//  MovieApp.swift
//  Movie
//
//  Created by Yifan Shi on 10/18/23.
//

import SwiftUI

@main
struct MovieApp: App {
    var body: some Scene {
        WindowGroup {
            //Due to how TabView functions, MenuTabView() is now the actual "Main" view. MainView() will be renamed "HomeView()".
            MenuTabView()
        }
    }
}
