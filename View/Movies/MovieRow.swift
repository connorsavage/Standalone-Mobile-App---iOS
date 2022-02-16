//
//  MovieRow.swift
//  MovieList
//
//  Created by Connor Savage on 1/31/22.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            movie.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(movie.title)
            
            Spacer()
            
            if movie.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var movies = ModelData().movies
    
    static var previews: some View {
        Group {
            MovieRow(movie: movies[0])
            MovieRow(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
