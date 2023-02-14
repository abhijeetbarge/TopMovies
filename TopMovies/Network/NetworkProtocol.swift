//
//  NetworkProtocol.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import Foundation

protocol NetworkProtocol {
    func fetchTopMovies(completion: @escaping ([Movie]?) -> Void)
}
