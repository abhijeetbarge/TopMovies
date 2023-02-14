//
//  NetworkManager.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import Foundation

class APIService: NetworkProtocol {
    
    private let populerMovieUrl = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1&api_key="
    private let apiKey = "a37b7a38e64b8c53ab04369e55cb9ecf"
    
    func fetchTopMovies(completion: @escaping ([Movie]?) -> Void) {
        guard let url = URL(string: "\(populerMovieUrl)\(apiKey)") else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let responseData = data, error == nil else {
                completion(nil)
                return
            }
            let str = String(decoding: responseData, as: UTF8.self)
            print("Response: \(str)")
            do {
                let response = try JSONDecoder().decode(Movies.self, from: responseData)
                completion(response.results)
            } catch {
                print(error)
            }
        }.resume()
    }
}
