//
//  HomeDestinationListView.swift
//  TripStick
//
//  Created by ammar on 21/05/2024.
//

import SwiftUI

struct HomeDestinationListView: View {
    
    let destinationList: TravelInspirationDomainModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(destinationList.title ?? "")
                .padding(.all, 12)
                .foregroundColor(.black)
                .font(.title2)
                .bold()
            
            Text(destinationList.subTitle ?? "")
                .foregroundColor(.black)
                .font(.callout)
                .bold()
                .padding(.horizontal, 12)
            
            ScrollView(.horizontal,showsIndicators: false) {
                LazyHStack {
                    ForEach(destinationList.destinationCityList ?? [],
                            id: \.cityID) { destinationCity in
                        ZStack {
                            ImageView(imageURL: destinationCity.imageURL ?? "",
                                      placeholder: nil)
                            .roundedCorner(10, corners: .allCorners)
                            VStack(alignment: .leading) {
                                Spacer()
                                HStack {
                                    Text(destinationCity.title ?? "")
                                        .padding(.all, 12)
                                        .foregroundColor(.white)
                                        .font(.title3)
                                        .bold()
                                    Spacer()
                                }
                            }
                        }.frame(width: 240,height: 180)
                            .padding(.horizontal, 8)
                    }
                }.padding(.all, 12)
            }.frame(height: 180)
            
        }
    }
}

#Preview {
    let listOne = [DestinationCityDomainModel(cityID: 89712389,
                                              title: "Paris",
                                              subTitle: "France",
                                              imageURL: "https://media.cnn.com/api/v1/images/stellar/prod/230324090551-01-visiting-france-during-protests-what-to-know-top.jpg"),
                   DestinationCityDomainModel(cityID: 456281,
                                              title: "Ghent",
                                              subTitle: "Belgium",
                                              imageURL: "https://www.travelanddestinations.com/wp-content/uploads/2020/11/Beautiful-Places-in-Belgium-Ghent-1.jpg")]
    
    return HomeDestinationListView(destinationList: TravelInspirationDomainModel(id: 562,
                                                                                 sequence: 2,
                                                                                 type: .destinationList,
                                                                                 imageURL: nil,
                                                                                 title: "Top destinations for your next holiday",
                                                                                 subTitle: "Here's where your fellow travellers are headed",
                                                                                 buttonTitle: nil,
                                                                                 destinationCityList: listOne,
                                                                                 did: nil))
}
