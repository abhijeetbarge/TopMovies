//
//  TopMoviesViewModel.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import Foundation
import Combine

class TopMoviesViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<TopMoviesViewModel,Never>()
    var apiService: NetworkProtocol?
    init(apiService: NetworkProtocol) {
        self.apiService = apiService
        fetchMovies()
    }
    
    @Published var moviesVM = [MovieViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
    
    func fetchMovies() {
        apiService?.fetchTopMovies { movies in
            guard let movies = movies else {
                return
            }
            DispatchQueue.main.async {
                self.moviesVM = movies.map(MovieViewModel.init)
            }
        }
    }
    
}
