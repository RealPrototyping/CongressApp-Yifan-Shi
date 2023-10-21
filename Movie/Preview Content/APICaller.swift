import Foundation

func fetchDataFromWikimedia() {
    let apiUrl = URL(string: "https://www.wikidata.org/w/api.php?action=wbsearchentities&search=Inception&format=json")!

    let session = URLSession.shared

    let task = session.dataTask(with: apiUrl) { (data, response, error) in
        if let error = error {
            print("Error: \(error.localizedDescription)")
            return
        }

        if let data = data {
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let searchResults = json["search"] as? [[String: Any]] {
                    for result in searchResults {
                        if let name = result["label"] as? String,
                           let description = result["description"] as? String,
                           let releaseDate = result["inception"] as? String {
                            print("Name: \(name)")
                            print("Description: \(description)")
                            print("Release Date: \(releaseDate)")
                        }
                    }
                }
            } catch {
                print("Error parsing JSON: \(error.localizedDescription)")
            }
        }
    }

    task.resume()
}

// Call the function to initiate the API request

