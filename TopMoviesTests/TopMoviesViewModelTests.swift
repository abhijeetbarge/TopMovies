//
//  TopMoviesViewModelTests.swift
//  TopMoviesTests
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import XCTest
@testable import TopMovies

final class TopMoviesViewModelTests: XCTestCase {
    
    
    
    func testSuccessFetchData() {
        let movie1 = Movie(title: "test_title", poster_path: "test_path", overview: "test_overview", release_date: "test_release_date", vote_average: 7.443)
        let mockMovie = [Movie(title: "test_title", poster_path: "test_path", overview: "test_overview", release_date: "test_release_date", vote_average: 7.443)]
        let service = MockAPIService(mockData: mockMovie)
        let viewModel = TopMoviesViewModel(apiService: service)
        viewModel.fetchMovies()
        
        
        let responseExpectation = XCTestExpectation(description: "testFetchData")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            XCTAssertEqual(viewModel.moviesVM.count, 1)
            let vm = viewModel.moviesVM[0]
            
            XCTAssertEqual(vm.title, movie1.title)
            XCTAssertEqual(vm.overview, movie1.overview)
            XCTAssertEqual(vm.vote, movie1.vote_average)
            
            responseExpectation.fulfill()
        })
        wait(for: [responseExpectation], timeout: 1.5)
    
    }
    
    func testEmptyData() {
        let emptyMock = [Movie]()
        let service = MockAPIService(mockData: emptyMock)
        let viewModel = TopMoviesViewModel(apiService: service)
        viewModel.fetchMovies()
        XCTAssertEqual(viewModel.moviesVM.count, 0)
    }
    
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
    
}
