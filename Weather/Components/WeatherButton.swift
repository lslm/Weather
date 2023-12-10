//
//  WeatherButton.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct WeatherButton: View {
    let text: String
    
    var body: some View {
        Text(text)
            .frame(width: 200, height: 42)
            .foregroundColor(.secondary)
            .background(.ultraThinMaterial)
            .font(.system(size: 20, weight: .medium, design: .rounded))
            .cornerRadius(8)
    }
}

#Preview {
    ZStack {
        Color.blue
        WeatherButton(text: "Change Day Time")
    }
}
