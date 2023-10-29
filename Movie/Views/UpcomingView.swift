//
//  UpcomingView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct UpcomingView: View {
    
    
    
    
    
    
    var body: some View {
        VStack() {
            Text("Upcoming Movies (US Release)")
                .font(.title2)
                
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Rectangle().foregroundColor(.red))
                .cornerRadius(5)
                .shadow(radius:10)
            
            UpView()
        }
        
    }
    
    
}
#Preview {
    UpcomingView()
}
