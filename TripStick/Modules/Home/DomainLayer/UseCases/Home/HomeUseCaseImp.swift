//
//  HomeUseCaseImp.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation
import Alamofire

class HomeUseCaseImp: HomeUseCaseProtocol {
    
    let repository: HomeRepoProtocol
    
    init(repository: HomeRepoProtocol) {
        self.repository = repository
    }
    
    func getHomeData() async -> Result<HomeDomainModel, AFError> {
        do {
            guard let homeData = try await repository.getHomeData() else {
                return .failure(AFError.parameterEncodingFailed(reason: .customEncodingFailed(error: ErrorUserInfoKey(rawValue: "") as! Error)))
            }
            return .success(homeData)
        } catch {
            if let error = error as? AFError {
                return .failure(error)
            } else {
                return .failure(.explicitlyCancelled)
            }
        }
    }
}
