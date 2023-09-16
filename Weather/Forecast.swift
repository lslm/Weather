//
//  Forecast.swift
//  Weather
//
//  Created by Lucas Santos on 16/09/23.
//

import Foundation

struct Forecast: Identifiable {
    let id: Int
    let day: String
    let icon: String
    let temperature: Int
}
