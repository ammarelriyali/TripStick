//
//  AnyNetwork.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//

import Foundation
import Alamofire

protocol AnyNetwork {
    
    func load<T: Decodable>(
        endPoint: String,
        method: HTTPMethod,
        parameters: Parameters? 
    ) async throws -> T
}
