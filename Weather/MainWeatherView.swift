//
//  MainWeatherView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct MainWeatherView: View {
    let currentWeather: Weather
    let futureForecasts: [Forecast]
    @ObservedObject var currentPreferences: Preferences
    
    var body: some View {
        VStack {
            CurrentCityView(city: currentWeather.city)
                .padding(.bottom, 42)
            
            CurrentWeatherView(
                currentWeather: currentWeather,
                currentPreferences: currentPreferences
            )
                .padding(.bottom, 42)
            
            HStack {
                Spacer()
                ForEach(futureForecasts) { forecast in
                    Group {
                        FutureForecastView(forecast: forecast)
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color(.blue)
        MainWeatherView(
            currentWeather: Weather(
                city: "Mogi das Cruzes, SP",
                dayOfTheWeek: "Monday",
                icon: "cloud.sun.fill",
                temperature: 79
            ),
            futureForecasts: [
                Forecast(id: 1, day: "TUE", icon: "cloud.sun.fill", temperature: 74),
                Forecast(id: 2, day: "WED", icon: "sun.max.fill", temperature: 70),
                Forecast(id: 3, day: "THU", icon: "wind", temperature: 66),
                Forecast(id: 4, day: "FRI", icon: "sunset.fill", temperature: 60),
                Forecast(id: 5, day: "SAT", icon: "moon.stars.fill", temperature: 55),
            ],
            currentPreferences: Preferences()
        )
    }
    
}
