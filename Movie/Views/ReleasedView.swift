//
//  ReleasedView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct ReleasedView: View {
    var body: some View {
        VStack() {
            Text("Newly Released Movies")
                .font(.title2)
                
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Rectangle().foregroundColor(Color(.systemMint)))
                .cornerRadius(5)
                .shadow(radius:10)
            
            RelView()
        }
    }
}
struct ReleasedView_Previews: PreviewProvider {
    static var previews: some View {
        ReleasedView()
    }
}


