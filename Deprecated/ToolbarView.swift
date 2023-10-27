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
    @State private var isPresentingFullView5 = false

    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                isPresentingFullView1.toggle()
            }) {
                VStack(){
                    Image(systemName: "tv.fill")
                    Text("Shows")
                }
                .foregroundStyle(Color(.gray))
            }
            .fullScreenCover(isPresented: $isPresentingFullView1) {
                ShowsView()
            }
            Spacer()
            Button(action: {
                isPresentingFullView2.toggle()
            }) {
                VStack(){
                    Image(systemName: "house.fill")
                    Text("Main")
                }
                .foregroundStyle(Color(.gray))
            }
            .fullScreenCover(isPresented: $isPresentingFullView2) {
                MainView()
            }
            Spacer()
            Button(action: {
                isPresentingFullView3.toggle()
            }) {
                VStack(){
                    Image(systemName: "movieclapper.fill")
                    Text("Movies")
                }
                .foregroundStyle(Color(.gray))
            }
            .fullScreenCover(isPresented: $isPresentingFullView3) {
                MoviesView()
            }
            Spacer()
            Button(action: {
                isPresentingFullView4.toggle()
            }) {
                VStack(){
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
                .foregroundStyle(Color(.gray))
            }
            .fullScreenCover(isPresented: $isPresentingFullView4) {
                ProfileView()
            }
            Spacer()
            Button(action: {
                isPresentingFullView5.toggle()
            }) {
                VStack(){
                    Image(systemName: "newspaper.fill")
                    
                    Text("News")
                }
                .foregroundStyle(Color(.gray))
            }
            .fullScreenCover(isPresented: $isPresentingFullView5) {
                NewsView()
            }
            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        
        
    }
}

#Preview {
    ToolbarView()
}
