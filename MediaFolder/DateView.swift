//
//  DateView.swift
//  TMDbAPI
//
//  Created by Yifan Shi on 10/29/23.
//

import SwiftUI
import Foundation

struct DateView: View {
    var dateString: String?
    
    var body: some View {
        guard let dateString = dateString else {
            return AnyView(Text("No date provided"))
        }
        
        let dateComponents = dateString.split(separator: "-")
        guard dateComponents.count == 3,
              let year = dateComponents.first,
              let day = String?(String(dateComponents[2])),
              let monthNumber = Int(String(dateComponents[1])),
              monthNumber >= 01 && monthNumber <= 12 else {
                          return AnyView(Text("Invalid date"))
        }
        
        let dateFormatter = DateFormatter()
        let month = dateFormatter.shortMonthSymbols[monthNumber - 1]
        
        return AnyView(
            HStack {
                Text(month)
                    .frame(width: 50, height: 50)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
                Text(String(day))
                    .frame(width: 50, height: 50)
                    .background(Color.green)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
                Text(String(year))
                    .frame(width: 70, height: 50)
                    .background(Color.red)
                    .cornerRadius(8)
                    .foregroundColor(.white)
            }
        )
    }
}
