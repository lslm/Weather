//
//  CurrentWeatherView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct CurrentWeatherView: View {
    let currentWeather: Weather
    @Binding var isNight: Bool
    
    var body: some View {
        VStack {
            Text(currentWeather.dayOfTheWeek)
                .font(.system(size: 28, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
            
            
            Image(systemName: isNight ? "moon.stars.fill" : currentWeather.icon)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .scaledToFit()
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            
            Text("\(currentWeather.temperature)º")
                .font(.system(size: 92, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ZStack {
        Color(.black)
        CurrentWeatherView(currentWeather: Weather(city: "Mogi das Cruzes", dayOfTheWeek: "Monday", icon: "cloud.sun.fill", temperature: 76), isNight: .constant(false)
        )
    }
}
