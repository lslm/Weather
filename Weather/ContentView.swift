//
//  ContentView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    let currentWeather = Weather(city: "Mogi das Cruzes, SP", dayOfTheWeek: "Segunda-feira", icon: "cloud.sun.fill", temperature: 79)
    
    let futureForecasts = [
        Forecast(id: 1, day: "TER", icon: "cloud.sun.fill", temperature: 74),
        Forecast(id: 2, day: "QUA", icon: "sun.max.fill", temperature: 70),
        Forecast(id: 3, day: "QUI", icon: "wind", temperature: 66),
        Forecast(id: 4, day: "SEX", icon: "sunset.fill", temperature: 60),
        Forecast(id: 5, day: "SAB", icon: "moon.stars.fill", temperature: 55),
    ]
    
    var body: some View {
        ZStack {
            BackgroundView(
                isNight ? Color.black : Color.blue
            )
            
            VStack {
                MainWeatherView(currentWeather: currentWeather, futureForecasts: futureForecasts, isNight: $isNight)
                
                Spacer()
                
                Button {
                    withAnimation {
                        isNight.toggle()
                    }
                } label: {
                    WeatherButton(text: "Mudar Cidade")
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            
        }
    }
}

#Preview {
    ContentView()
}
