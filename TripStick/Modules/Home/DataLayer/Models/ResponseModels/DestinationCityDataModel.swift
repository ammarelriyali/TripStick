//
//  DestinationCityDataModel.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation

struct DestinationCity: Codable {
    let cityID: Int
    let title, subTitle: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case cityID = "city_id"
        case title
        case subTitle = "sub_title"
        case imageURL = "image_url"
    }
}
