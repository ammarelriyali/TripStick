//
//  HomeRepoProtocol.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation

protocol HomeRepoProtocol {
    func getHomeData() async throws -> HomeDomainModel? 
}
