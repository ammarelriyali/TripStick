//
//  HomeDataModel.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//
import Foundation

struct HomeDataModel: Codable {
    let lang: String?
    let travelInspirationList: [TravelInspirationDataModel]?

    enum CodingKeys: String, CodingKey {
        case lang
        case travelInspirationList = "travel_inspiration"
    }
    
    func mapToDomainModel() -> HomeDomainModel {
        HomeDomainModel(lang: lang,
                        travelInspirationList: travelInspirationList?.map{$0.mapToDomainModel()})
    }
}
