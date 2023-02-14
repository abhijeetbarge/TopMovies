//
//  MovieListModelTests.swift
//  TopMoviesTests
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import XCTest
@testable import TopMovies

final class MovieListModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testMoviewResultsModel() {
      let json = """
            {
                  "adult": false,
                  "backdrop_path": "/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg",
                  "genre_ids": [
                    28,
                    12,
                    878
                  ],
                  "id": 505642,
                  "original_language": "en",
                  "original_title": "Black Panther: Wakanda Forever",
                  "overview": "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
                  "popularity": 6117.07,
                  "poster_path": "/sv1xJUazXeYqALzczSZ3O6nkH75.jpg",
                  "release_date": "2022-11-09",
                  "title": "Black Panther: Wakanda Forever",
                  "video": false,
                  "vote_average": 7.5,
                  "vote_count": 3036
                }
      """.data(using: .utf8)!
      
      let movies = try! JSONDecoder().decode(Movies.self, from: json)
      XCTAssertNotNil(movies)
      
     }
}
