//
//  HomeUseCaseProtocol.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation
import Alamofire
protocol HomeUseCaseProtocol {
    func getHomeData() async -> Result<HomeDomainModel, AFError>
}
