//
//  MovieList.swift
//  MovieList
//
//  Created by Connor Savage on 1/31/22.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredMovies: [Movie] {
        modelData.movies.filter { movie in
            (!showFavoritesOnly || movie.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredMovies) { movie in
                    NavigationLink {
                        MovieDetail(movie: movie)
                    } label: {
                        MovieRow(movie: movie)
                    }
                }
            }
            .navigationBarTitle(Text("Movies"))
            .navigationBarItems(leading: Image("filmreel")
                                    .renderingMode(.template)
                                    .foregroundColor(.secondary)
                                    .ignoresSafeArea()
            )
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
            .environmentObject(ModelData())
    }
}
