//
//  ShowsView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct ShowsView: View {
    @State private var isPresentingFullView = false
    var body: some View {
        
        VStack() {
            Text("Shows")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Rectangle().foregroundColor(Color(.green)))
                .cornerRadius(5)
                .shadow(radius:10)
            
            ShowView()
        }
        .padding(.bottom, 20)
        
    }
}

#Preview {
    ShowsView()
}
