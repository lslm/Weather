//
//  FutureForecastsView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct FutureForecastView: View {
    let forecast: Forecast
    
    var body: some View {
        VStack {
            Text(forecast.day)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundStyle(.white)
                .padding(.bottom)
            
            Image(systemName: forecast.icon)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 42, height: 42)
                
            Text("\(forecast.temperature)º")
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ZStack {
        Color(.blue)
        FutureForecastView(forecast: Forecast(id: 0, day: "MON", icon: "cloud.sun.fill", temperature: 79))
    }
    
}
