//
//  HomeTravelInspirationListView.swift
//  TripStick
//
//  Created by ammar on 21/05/2024.
//

import SwiftUI

struct HomeTravelInspirationListView: View {
    @Binding var travelInspirationList: [TravelInspirationDomainModel]
    @Binding var isLoading: Bool
    var body: some View {
        ForEach(travelInspirationList, id: \.sequence) { travelInspiration in
            
            HomeFeaturedStayCardView(featuredStay: travelInspiration)
                .isHidden(travelInspiration.type == .destinationList, remove: false)
            
            HomeDestinationListView(destinationList: travelInspiration)
                .isHidden(travelInspiration.type == .featuredStays, remove: false)

        }.redacted(reason: isLoading ? .placeholder : [])
    }
}

#Preview {
    HomeTravelInspirationListView(travelInspirationList: .constant([]),
                                  isLoading: .constant(false))
}
