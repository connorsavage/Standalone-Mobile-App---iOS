//
//  FilmBackground.swift
//  MovieList
//
//  Created by Connor Savage on 2/10/22.
//

import SwiftUI

struct FilmBackground: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.pink, .purple],
                startPoint: .leading, endPoint: .trailing
            )
                .ignoresSafeArea()
            
            Rectangle()
                .frame(width: 20, height: 150)
                .clipShape(Capsule())
                .overlay {
                    Rectangle().stroke(.secondary, lineWidth: 4)
                        .clipShape(Capsule())
                }
                .shadow(radius: 7)
                .position(x: 370, y: 490)
            
            Circle()
                .frame(width: 375, alignment: .center)
                .overlay {
                    Circle().stroke(.secondary, lineWidth: 4)
                }
                .shadow(radius: 7)
            
            Circle().fill(.white)
                .frame(width: 50)
            
            Circle().fill(.white)
                .frame(width: 90)
                .position(x: 90, y: 315)
            
            Circle().fill(.white)
                .frame(width: 90)
                .position(x: 290, y: 315)
            
            Circle().fill(.white)
                .frame(width: 90)
                .position(x: 190, y: 250)
            
            Circle().fill(.white)
                .frame(width: 90)
                .position(x: 190, y: 510)
            
            Circle().fill(.white)
                .frame(width: 90)
                .position(x: 90, y: 425)
            
            Circle().fill(.white)
                .frame(width: 90)
                .position(x: 290, y: 425)
        }
    }
}


struct FilmBackground_Previews: PreviewProvider {
    static var previews: some View {
        FilmBackground()
    }
}
