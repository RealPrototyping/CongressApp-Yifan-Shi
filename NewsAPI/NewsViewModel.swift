import SwiftUI
import Combine

class NewsViewModel: ObservableObject {
    @Published var newsFeed: NewsFeed?

    func fetchNews() {
        let urlString = "https://newsapi.org/v2/everything?q=upcoming%20movie%20releases%20OR%20upcoming%20tv%20show%20releases&apiKey=1d057bb57f2245b9bad75a05a5944e3f"
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let safeData = data {
                    let decoder = JSONDecoder()
                    if let decodedData = try? decoder.decode(NewsFeed.self, from: safeData) {
                        DispatchQueue.main.async {
                            self.newsFeed = decodedData
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
