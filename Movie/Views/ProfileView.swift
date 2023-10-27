//
//  ProfileView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var isPresentingFullView = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                ScrollView {
                    HStack(){
                        Button(action: {
                            isPresentingFullView.toggle()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
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
    ProfileView()
}
