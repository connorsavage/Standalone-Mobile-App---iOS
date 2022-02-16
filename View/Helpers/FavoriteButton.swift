//
//  FavoriteButton.swift
//  MovieList
//
//  Created by Connor Savage on 1/31/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
                .scaleEffect(isSet ? 4 : 1)
                .scaleEffect(isSet ? 0.25: 1)
                .animation(.easeInOut(duration: 1), value: isSet)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
