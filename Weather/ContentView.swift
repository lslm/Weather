//
//  ContentView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    let currentWeather = Weather(city: "Mogi das Cruzes, SP", dayOfTheWeek: "Monday", icon: "cloud.sun.fill", temperature: 79)
    
    let futureForecasts = [
        Forecast(id: 1, day: "TUE", icon: "cloud.sun.fill", temperature: 74),
        Forecast(id: 2, day: "WED", icon: "sun.max.fill", temperature: 70),
        Forecast(id: 3, day: "THU", icon: "wind", temperature: 66),
        Forecast(id: 4, day: "FRI", icon: "sunset.fill", temperature: 60),
        Forecast(id: 5, day: "SAT", icon: "moon.stars.fill", temperature: 55),
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
                    isNight.toggle()
                } label: {
                    WeatherButton(text: "Change Day Time", foregroundColor: Color.blue, backgroundColor: Color.white)
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
