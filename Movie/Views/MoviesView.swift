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
        
        VStack() {
            Text("Movies")
                .font(.title2)
                
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Rectangle().foregroundColor(.mint))
                .cornerRadius(5)
                .shadow(radius:10)
            
            PopView()
        }
        .padding(.bottom, 20)
        
    }
}

#Preview {
    MoviesView()
}
