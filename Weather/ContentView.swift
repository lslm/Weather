//
//  ContentView.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import SwiftUI

struct ContentView: View {
    
    let futureForecasts = [
        Forecast(id: 1, day: "TUE", icon: "cloud.sun.fill", temperature: 74),
        Forecast(id: 2, day: "WED", icon: "sun.max.fill", temperature: 70),
        Forecast(id: 3, day: "THU", icon: "wind", temperature: 66),
        Forecast(id: 4, day: "FRI", icon: "sunset.fill", temperature: 60),
        Forecast(id: 5, day: "SAT", icon: "moon.stars.fill", temperature: 55),
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color("heavyblue"), Color("lightblue")]),
                startPoint: .top,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Mogi das Cruzes, SP")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundStyle(.thickMaterial)
                
                Spacer()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                    
                    //                    Image(systemName: "cloud.sun.fill")
                    //                        .renderingMode(.original)
                    //                        .resizable()
                    //                        Usage of aspectRatio
                    //                        .aspectRatio(contentMode: .fit)
                    //                        .frame(width: 200, height: 100)
                    
                    Text("76º")
                        .font(.system(size: 92, weight: .medium, design: .rounded))
                        .foregroundStyle(.thickMaterial)
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    ForEach(futureForecasts) { forecast in
                        Group {
                            ExtractedView(forecast: forecast)
                            Spacer()
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                Button {
                    print("Done")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 200, height: 42)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .cornerRadius(8)
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

struct ExtractedView: View {
    let forecast: Forecast
    
    var body: some View {
        VStack {
            Text(forecast.day)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundStyle(.thickMaterial)
                .padding(.bottom)
            
            Image(systemName: forecast.icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                
            
            Text("\(forecast.temperature)º")
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}
