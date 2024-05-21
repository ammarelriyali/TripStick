//
//  HomeFeaturedStayCardView.swift
//  TripStick
//
//  Created by ammar on 21/05/2024.
//

import SwiftUI

struct HomeFeaturedStayCardView: View {
    
    let featuredStay: TravelInspirationDomainModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
   
    return HomeFeaturedStayCardView(featuredStay: TravelInspirationDomainModel(id: 1,
                                                                      sequence: 1,
                                                                      type: .featuredStays,
                                                                      imageURL: "https://res.cloudinary.com/drykvi3xr/image/upload/v1684742300/tripstick/scuba-diving_h2iagu.jpg",
                                                                      title: "17 cool stays by the water for a once-in-a-lifetime trip",
                                                                      subTitle: "Overwater villas, underwater hotels, cliffside retreats, and more.",
                                                                      buttonTitle: "Explore",
                                                                      destinationCityList: nil,
                                                                      did: nil))
}
