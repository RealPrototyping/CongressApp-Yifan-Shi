//
//  SwiftUIView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct ModelList: View {
    @State var ModelItems:[ModelItem] = [ModelItem]()

    //var dataService = DataService()

    var body: some View {
        
        List(ModelItems) { item in
            
           ModelMenu(item: item)
            
        }
        .listStyle(.plain)
        .onAppear{
            // Call for the data
            //ModelItems = dataService.getData()
        }
        
    }
}
#Preview {
    ModelList()
}
