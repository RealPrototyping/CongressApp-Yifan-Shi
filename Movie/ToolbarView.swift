//
//  ToolbarView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct ToolbarView: View {
    @State private var isPresentingFullView1 = false
    @State private var isPresentingFullView2 = false
    @State private var isPresentingFullView3 = false
    @State private var isPresentingFullView4 = false

    var body: some View {
        HStack {
            Button(action: {
                isPresentingFullView1.toggle()
            }) {
                Image(systemName: "tv")
                Text("Shows")
            }
            .fullScreenCover(isPresented: $isPresentingFullView1) {
                ShowsView()
            }
            Button(action: {
                isPresentingFullView2.toggle()
            }) {
                Image(systemName: "house")
                Text("Main")
            }
            .fullScreenCover(isPresented: $isPresentingFullView2) {
                MainView()
            }
            
            Button(action: {
                isPresentingFullView3.toggle()
            }) {
                Image(systemName: "film")
                Text("Movies")
            }
            .fullScreenCover(isPresented: $isPresentingFullView3) {
                MoviesView()
            }
            Button(action: {
                isPresentingFullView4.toggle()
            }) {
                Image(systemName: "person")
                Text("Profile")
            }
            .fullScreenCover(isPresented: $isPresentingFullView4) {
                ProfileView()
            }
        }
        .padding()
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    ToolbarView()
}
