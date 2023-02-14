//
//  TopMoviesView.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import SwiftUI
import Combine

struct TopMoviesView: View {
    @StateObject var model: TopMoviesViewModel = TopMoviesViewModel(apiService: APIService())
    
    var body: some View {
        NavigationView {
            List(model.moviesVM, id: \.id ) { movie in
                NavigationLink {
                    MovieDetailView(movieVM: movie)
                }
            label: {
                MovieCell(movieVM: movie).accessibilityIdentifier("TopMoviesViewCellIdentifier")
            }
            .listRowSeparator(.hidden)
                
            }
            .navigationTitle("Top Movies")
        }.accessibilityIdentifier("TopMoviesViewIdentifier")
    }
}

//struct TopMoviesView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoviesView()
//    }
//}


