//
//  BackgroundView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct BackgroundView: View {
    let backgroundColor: Color
    
    init(_ backgroundColor: Color) {
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
//        LinearGradient(
//            gradient: Gradient(colors: backgroundColors),
//            startPoint: .top,
//            endPoint: .bottomTrailing
//        )
//        .ignoresSafeArea()
        ContainerRelativeShape()
            .fill(backgroundColor.gradient)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(Color.darkgreen)
}
