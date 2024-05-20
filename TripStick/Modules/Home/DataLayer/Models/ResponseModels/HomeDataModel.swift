//
//  HomeDataModel.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//
import Foundation

struct HomeDataModel: Codable {
    let lang: String
    let travelInspiration: [TravelInspiration]

    enum CodingKeys: String, CodingKey {
        case lang
        case travelInspiration = "travel_inspiration"
    }
}
