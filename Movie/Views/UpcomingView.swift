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
            Text("Upcoming Movies (US Release)*")
                .font(.title2)
                
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Rectangle().foregroundColor(.green))
                .cornerRadius(5)
                .shadow(radius:10)
            Text("Displayed date is the ORIGINAL release. The US release date may differ.*")
            
            UpView()
        }
        .padding(.bottom, 20)
        
    }
    
    
}
#Preview {
    UpcomingView()
}
