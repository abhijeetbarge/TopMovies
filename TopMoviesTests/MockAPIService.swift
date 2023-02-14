//
//  MockAPIService.swift
//  TopMoviesTests
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import Foundation
@testable import TopMovies

class MockAPIService : NetworkProtocol {
    
    let mockData: [Movie]?
    
    init(mockData: [Movie]?) {
        self.mockData = mockData
    }
    
    func fetchTopMovies(completion: @escaping ([TopMovies.Movie]?) -> Void) {
        completion(mockData)
    }
}
