//
//  MovieCell.swift
//  TopMovies
//
//  Created by Abhijeet B Barge on 14/02/23.
//

import SwiftUI

struct MovieCell: View {
    
    var movieVM: MovieViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
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
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 300)
            .cornerRadius(4)
            Text(movieVM.title)
        }.padding(10)
    }
}


//struct MovieCell_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieCell()
//    }
//}
