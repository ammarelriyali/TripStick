//
//  Paginatable.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation

@MainActor
protocol Paginatable {
    
    var page: Int { get set }
    var totalItemsCount: Int {get set}
}
