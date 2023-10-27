//
//  MoviesView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct MoviesView: View {
    @State private var isPresentingFullView = false
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(.orange)
                    .ignoresSafeArea()
                ScrollView {
                    HStack(){
                        Button(action: {
                            isPresentingFullView.toggle()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                        }
                               
                               
                        )
                        .padding()
                        Spacer()
                    }
                    
                }
                .fullScreenCover(isPresented: $isPresentingFullView) {
                    MainView()
                }
            }
            
        }
        
    }
}

#Preview {
    MoviesView()
}