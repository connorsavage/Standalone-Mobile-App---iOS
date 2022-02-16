//
//  MovieImage.swift
//  MovieList
//
//  Created by Connor Savage on 1/31/22.
//

import SwiftUI

struct MovieImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 300, height: 450)
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct MovieImage_Previews: PreviewProvider {
    static var previews: some View {
        MovieImage(image: Image("interstellar"))
    }
}
