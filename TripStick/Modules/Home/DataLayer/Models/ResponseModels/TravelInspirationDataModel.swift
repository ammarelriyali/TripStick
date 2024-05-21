//
//  TravelInspirationDataModel.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation

struct TravelInspirationDataModel: Codable {
    let id, sequence: Int?
    let type: TravelInspirationTypeEnum?
    let imageURL: String?
    let title, subTitle: String?
    let buttonTitle: String?
    let destinationCityList: [DestinationCityDataModel]?
    let did: Int?
    
    enum CodingKeys: String, CodingKey {
        case id, sequence, type
        case imageURL = "image_url"
        case title
        case subTitle = "sub_title"
        case buttonTitle = "button_title"
        case destinationCityList = "list"
        case did
    }
    
    func mapToDomainModel() -> TravelInspirationDomainModel {
        TravelInspirationDomainModel(id: id,
                                     sequence: sequence,
                                     type: type,
                                     imageURL: imageURL,
                                     title: title,
                                     subTitle: subTitle,
                                     buttonTitle: buttonTitle,
                                     destinationCityList: destinationCityList?.map{ $0.mapToDomainModel()},
                                     did: did)
    }
    
}
