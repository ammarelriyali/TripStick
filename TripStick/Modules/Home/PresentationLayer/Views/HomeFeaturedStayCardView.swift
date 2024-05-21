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
        ZStack(alignment: .leading) {
            ImageView(imageURL: featuredStay.imageURL ?? "",
                      placeholder: nil)
            
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text(featuredStay.title ?? "")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 12)
                
                Text(featuredStay.subTitle ?? "")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.all, 8)

                Button(action: {
                    print(featuredStay.buttonTitle ?? "" )
                }, label: {
                    Text(featuredStay.buttonTitle ?? "")
                        .foregroundColor(.black)
                        .font(.title3)
                        .frame(width: 100, height: 40)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                    
                }).padding(.horizontal, 12)
            }.padding(.vertical, 24)
                .frame(width: 300)
        }.frame(height: 500)
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
