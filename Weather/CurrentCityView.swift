//
//  CurrentCityView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct CurrentCityView: View {
    let city: String
    
    var body: some View {
        Text(city)
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .foregroundStyle(.white)
    }
}

#Preview {
    ZStack {
        Color(.blue)
        CurrentCityView(city: "Mogi das Cruzes, SP")
    }
}
