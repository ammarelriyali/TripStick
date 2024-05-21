//
//  TravelInspirationDataModel.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation

struct TravelInspirationDomainModel {
    let id, sequence: Int?
    let type: TravelInspirationTypeEnum?
    let imageURL: String?
    let title, subTitle: String?
    let buttonTitle: String?
    let destinationCityList: [DestinationCityDomainModel]?
    let did: Int?
}
