//
//  MovieViewModel.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import Foundation

class MovieViewModel: Identifiable {
    
    //let id = UUID()
    let movie: Movie
    
    private let imageBaseUrl = "https://image.tmdb.org/t/p/original"
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    var title: String {
        return self.movie.title ?? ""
    }
    
    var overview: String {
        return self.movie.overview ?? ""
    }
    
    var vote: Double? {
        return self.movie.vote_average
    }
    
    var imageName: String {
        if let imageName = self.movie.poster_path {
            let imageUrlStr = "\(imageBaseUrl)\(imageName)"
            print(imageUrlStr)
            return imageUrlStr
        }
        return ""
    }
}
