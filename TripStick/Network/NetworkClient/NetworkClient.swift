//
//  NetworkClient.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//

import Foundation

import Alamofire

struct NetworkClient: AnyNetwork {
    
    private typealias Constants = NetworkConstants

    func load<T: Decodable>(
        endPoint: String,
        method: HTTPMethod,
        parameters: Parameters? = nil
    ) async throws -> T {
        
        let url = Constants.apiUrl + endPoint
        let headers: HTTPHeaders = [
            Constants.acceptHeader: Constants.acceptHeaderContent]
        return try await AF.request(
            url,
            method: method,
            parameters: parameters,
            headers: headers
        ).validate()
            .serializingDecodable(T.self)
            .value
    }
}
