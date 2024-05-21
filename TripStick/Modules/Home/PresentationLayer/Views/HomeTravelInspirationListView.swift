//
//  HomeTravelInspirationListView.swift
//  TripStick
//
//  Created by ammar on 21/05/2024.
//

import SwiftUI

struct HomeTravelInspirationListView: View {
    let travelInspirationList: [TravelInspirationDomainModel]
    let  isLoading: Bool
    var body: some View {
        ForEach(travelInspirationList, id: \.sequence) { travelInspiration in
            
            HomeFeaturedStayCardView(featuredStay: travelInspiration)
                .isHidden(travelInspiration.type == .destinationList, remove: true)
                .padding(.vertical, 12)
            
            HomeDestinationListView(destinationList: travelInspiration)
                .isHidden(travelInspiration.type == .featuredStays,
                          remove: true)
                .padding(.vertical, 12)

        }.redacted(reason: isLoading ? .placeholder : [])
    }
}

#Preview {
    HomeTravelInspirationListView(travelInspirationList: [],
                                  isLoading: false)
}
