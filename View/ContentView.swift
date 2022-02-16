//
//  ContentView.swift
//  MovieList
//
//  Created by Connor Savage on 1/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MovieList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
