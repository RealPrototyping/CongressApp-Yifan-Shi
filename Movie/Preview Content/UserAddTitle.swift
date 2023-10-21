//
//  UserAddTitle.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI


struct Item: Hashable, Codable {
    let type: String // "Movie" or "Show"
    let name: String
    let date: Date
}


struct UserAddTitle: View {
    @State private var selectedType = "Movie"
    @State private var itemName = ""
    @State private var date = Date()
    @Binding var items: [Item] // Assuming you have an array to store items
    @Binding var isPresented: Bool

    var body: some View {
        Form {
            Section {
                Picker("Select Type", selection: $selectedType) {
                    Text("Movie").tag("Movie")
                    Text("Show").tag("Show")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section {
                if selectedType == "Movie" {
                    TextField("Movie Name", text: $itemName)
                } else {
                    TextField("Show Name", text: $itemName)
                }
            }
            Section {
                DatePicker("Item Date", selection: $date, displayedComponents: .date)
            }
            Section {
                Button(action: {
                    // Create an instance of Item and add it to the items array
                    let newItem = Item(type: selectedType, name: itemName, date: date)
                    items.append(newItem)

                    // Dismiss the UserAddTitle view
                    isPresented = false
                }) {
                    Text("Save")
                }
            }
        }
    }
}
