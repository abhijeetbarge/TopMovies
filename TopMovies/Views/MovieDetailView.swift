//
//  MovieDetailView.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import SwiftUI

struct MovieDetailView: View {
    var movieVM: MovieViewModel
    var body: some View {
            VStack(alignment: .center, spacing: 10) {
                
                AsyncImage(
                    url: URL(string: movieVM.imageName),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
                
                    Text(movieVM.title)
                        .lineLimit(2)
                        .font(.title3)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                
                

                    if let vote = movieVM.vote {
                        Text(String(format: "%.1f ", vote)) + Text(Image(systemName: "star"))
                    }
                    
                
                Text(movieVM.overview)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, // Full Screen Width
                    maxHeight: .infinity, // Full Screen Height
                    alignment: .topLeading) // Align To top
    }
}

//struct MovieDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieDetailView(movie: movie!)
//    }
//}
