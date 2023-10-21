//
//  ModelMenu.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct ModelMenu: View {
    
    var item: ModelItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            VStack(){
                Text(item.name)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(item.type)
            }
            Spacer()
            Text(item.date)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown).opacity(0.1))
        .padding()
    }
}

#Preview {
    ModelMenu(item: ModelItem(name: "Incredibles", type: "Movie", imageName: "placeholder", date: "8/17/16") )
}
