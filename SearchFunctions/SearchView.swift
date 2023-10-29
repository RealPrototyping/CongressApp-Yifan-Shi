//
//  SearchView.swift
//  TestSearch
//
//  Created by Yifan Shi on 10/29/23.
//

import SwiftUI

import SwiftUI

struct SearchView: View {
    @State private var userInput = ""  // This property will store the user's input

    var body: some View {
        NavigationView(){
            VStack {
                TextField("Enter search text...", text: $userInput)  // Bind the TextField to userInput
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                NavigationLink(destination: QueryView(inp: userInput)){
                    Text("Search")
                        .foregroundColor(.blue)
                }
                Spacer()
            }
        }
    }

    func search(query: String) {
        
    }
}

#Preview {
    SearchView()
}
