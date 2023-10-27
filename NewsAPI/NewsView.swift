//
//  NewsView.swift
//  TestNewsAPI
//
//  Created by Yifan Shi on 10/22/23.
//

import SwiftUI

struct IdentifiableURL: Identifiable {
    var id: String { url.absoluteString }
    var url: URL
}

struct NewsView: View {
    @StateObject var viewModel = NewsViewModel()
    @State private var selectedArticleURL: IdentifiableURL? = nil
    var body: some View {
        VStack {
            if let articles = viewModel.newsFeed?.articles {
                List(articles) { article in
                    VStack(alignment: .leading) {
                        Text(article.title ?? "Unknown title")
                        AsyncImage(url: URL(string: article.urlToImage ?? "")) { image in
                                    image.resizable().scaledToFit()
                                } placeholder: {
                                    ProgressView()
                                }
                                .onTapGesture {
                                    if let url = URL(string: article.url ?? "") {
                                        selectedArticleURL = IdentifiableURL(url: url)
                                    }
                                }
                                .fullScreenCover(item: $selectedArticleURL) { identifiableURL in
                                    SafariView(url: identifiableURL.url)
                                }
                        Text(article.description ?? "No description available")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                }
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            viewModel.fetchNews()
        }
    }
}

struct ArticleRow: Identifiable {
    var id: String { url ?? UUID().uuidString }
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
}


#Preview {
    NewsView()
}
