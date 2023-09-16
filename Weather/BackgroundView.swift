//
//  BackgroundView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct BackgroundView: View {
    let backgroundColors: [Color]
    
    init(_ backgroundColors: [Color]) {
        self.backgroundColors = backgroundColors
    }
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: backgroundColors),
            startPoint: .top,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView([Color(.red), Color(.blue)])
}
