//
//  MovieListApp.swift
//  MovieList
//
//  Created by Connor Savage on 1/27/22.
//

import SwiftUI

@main
struct MovieListApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
