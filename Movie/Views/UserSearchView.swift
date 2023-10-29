//
//  ProfileView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct UserSearchView: View {
    @State private var isPresentingFullView = false
    var body: some View {
        VStack(){
            Text("Search For Any Movie")
            SearchView()
        }
            
    }
}

#Preview {
    UserSearchView()
}
