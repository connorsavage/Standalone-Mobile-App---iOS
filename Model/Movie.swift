//
//  Movie.swift
//  MovieList
//
//  Created by Connor Savage on 1/31/22.
//

import Foundation
import SwiftUI


struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var genre: String
    var releaseYear: String
    var rating: String
    var timeLength: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
