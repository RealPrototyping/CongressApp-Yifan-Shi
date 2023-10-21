//
//  SearchView.swift
//  Movie
//
//  Created by Yifan Shi on 10/21/23.
//

import SwiftUI

struct SearchView: View {
  @State private var searchText = ""

  var body: some View {
    NavigationView {
      ScrollView {
        VStack {
          HStack {
            Image(systemName: "magnifyingglass")
              .foregroundColor(.gray)
            TextField("Search for movie/show", text: $searchText)
              .foregroundColor(.black)
          }
          .padding(8)
          .background(Color.gray.opacity(0.2))
          .cornerRadius(10)

          if !searchText.isEmpty {
            List(movies.filter { $0.name.contains(searchText) || $0.type.contains(searchText) }) { movie in
              HStack {
                Text(movie.name)
                  .font(.title3)
                Spacer()
                Text(movie.type)
                  .font(.caption)
                Spacer()
                Text(movie.releaseDate)
                  .font(.caption)
              }
              .padding(8)
            }
          }
        }
      }
    }
  }
}

struct Movie: Identifiable {
  let id = UUID()
  let name: String
  let type: String
  let releaseDate: String
}

let movies = [
  Movie(name: "The Shawshank Redemption", type: "Movie", releaseDate: "1994-09-23"),
  Movie(name: "The Godfather", type: "Movie", releaseDate: "1972-03-24"),
  Movie(name: "The Dark Knight", type: "Movie", releaseDate: "2008-07-18"),
  Movie(name: "The Godfather: Part II", type: "Movie", releaseDate: "1974-12-20"),
  Movie(name: "Pulp Fiction", type: "Movie", releaseDate: "1994-10-14"),
  Movie(name: "12 Angry Men", type: "Movie", releaseDate: "1957-04-10"),
  Movie(name: "Schindler's List", type: "Movie", releaseDate: "1993-12-15"),
  Movie(name: "The Lord of the Rings: The Return of the King", type: "Movie", releaseDate: "2003-12-17"),
  Movie(name: "The Lord of the Rings: The Fellowship of the Ring", type: "Movie", releaseDate: "2001-12-19"),
  Movie(name: "Forrest Gump", type: "Movie", releaseDate: "1994-07-06"),
  Movie(name: "Fight Club", type: "Movie", releaseDate: "1999-10-15"),
  Movie(name: "Whiplash", type: "Movie", releaseDate: "2014-10-10"),
  Movie(name: "Inception", type: "Movie", releaseDate: "2010-07-16"),
  Movie(name: "The Matrix", type: "Movie", releaseDate: "1999-03-31"),
  Movie(name: "Good Will Hunting", type: "Movie", releaseDate: "1997-12-25"),
  Movie(name: "Interstellar", type: "Movie", releaseDate: "2014-11-07"),
  Movie(name: "The Big Lebowski", type: "Movie", releaseDate: "1998-03-06"),
  Movie(name: "The Social Network", type: "Movie", releaseDate: "2010-10-01"),
  Movie(name: "The Departed", type: "Movie", releaseDate: "2006-10-06"),
]


#Preview {
    SearchView()
}
