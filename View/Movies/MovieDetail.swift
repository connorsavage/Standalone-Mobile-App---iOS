//
//  MovieDetail.swift
//  MovieList
//
//  Created by Connor Savage on 1/31/22.
//

import SwiftUI

struct MovieDetail: View {
    @EnvironmentObject var modelData: ModelData
    var movie: Movie
    
    var movieIndex: Int {
        modelData.movies.firstIndex(where: { $0.id == movie.id})!
    }
    
    var body: some View {
        ScrollView {
            MovieImage(image: movie.image)
                .frame(height: 450)
            VStack(alignment: .leading) {
                HStack {
                    Text(movie.title)
                        .font(.title)
                    
                    FavoriteButton(isSet: $modelData.movies[movieIndex].isFavorite)
                }
                
                HStack {
                    Text(movie.genre)
                    
                    Spacer()
                    
                    Text(movie.releaseYear)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                HStack {
                    Text(movie.rating)
                    
                    Spacer()
                    
                    Text(movie.timeLength)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(movie.title)")
                    .font(.title2)
                
                Text(movie.description)
                    .font(.caption)
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        MovieDetail(movie: ModelData().movies[0])
            .environmentObject(modelData)
    }
}
