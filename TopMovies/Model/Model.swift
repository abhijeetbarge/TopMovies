//
//  Model.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import Foundation

struct Movies: Codable {
    let results: [Movie]?
}

struct Movie: Codable {
    let title: String?
    let poster_path: String?
    let overview: String?
    let release_date: String?
    let vote_average: Double?
}
