//
//  TravelInspirationDataModel.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation

struct TravelInspiration: Codable {
    let id, sequence: Int
    let type: String
    let imageURL: String?
    let title, subTitle: String
    let buttonTitle: String?
    let list: [DestinationCity]?
    let did: Int?

    enum CodingKeys: String, CodingKey {
        case id, sequence, type
        case imageURL = "image_url"
        case title
        case subTitle = "sub_title"
        case buttonTitle = "button_title"
        case list, did
    }
}
