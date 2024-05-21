//
//  HomeRepoImp.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation

struct HomeRepoImp: HomeRepoProtocol {
    
    let network : AnyNetwork
//    
//    func getHomeData() async throws -> HomeDomainModel? {
//        let HomeResponse: HomeDataModel  = try await network.load(endPoint:
//                                                                        HomeProvider.homeEndPoint,
//                                                                    method: .get,
//                                                                    parameters: nil)
//        
//        return HomeResponse.compactMap{ $0.mapToDomainModel() }
//    }
    

    func getHomeData() async throws -> HomeDomainModel? {
        try await Task.sleep(nanoseconds: 2_000_000_000)
        let listOne = [DestinationCityDataModel(cityID: 89712389,
                                                title: "Paris",
                                                subTitle: "France",
                                                imageURL: "https://media.cnn.com/api/v1/images/stellar/prod/230324090551-01-visiting-france-during-protests-what-to-know-top.jpg"),
                       DestinationCityDataModel(cityID: 456281,
                                                title: "Ghent",
                                                subTitle: "Belgium",
                                                imageURL: "https://www.travelanddestinations.com/wp-content/uploads/2020/11/Beautiful-Places-in-Belgium-Ghent-1.jpg")]
        let listTwo = [DestinationCityDataModel(cityID: 1253456671,
                                                title: "Dubai",
                                                subTitle: "UAE",
                                                imageURL: "https://www.visitdubai.com/-/media/images/leisure/detail-pages/explore-dubai/1-3-dubai-neighbourhoods-t34/dubai-neighborhood-business-bay.jpg"),
                       DestinationCityDataModel(cityID: 877832179,
                                                title: "Abu Dhabi",
                                                subTitle: "UAE",
                                                imageURL: "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0a/89/c4/66.jpg")]
        
        let featuredStaysTravelInspirationOne = TravelInspirationDataModel(id: 1,
                                           sequence: 1,
                                           type: .featuredStays,
                                           imageURL: "https://res.cloudinary.com/drykvi3xr/image/upload/v1684742300/tripstick/scuba-diving_h2iagu.jpg",
                                           title: "17 cool stays by the water for a once-in-a-lifetime trip",
                                           subTitle: "Overwater villas, underwater hotels, cliffside retreats, and more.",
                                           buttonTitle: "Explore",
                                           destinationCityList: nil,
                                           did: nil)
        let destinationListOne = TravelInspirationDataModel(id: 562,
                                                            sequence: 2,
                                                            type: .destinationList,
                                                            imageURL: nil,
                                                            title: "Top destinations for your next holiday",
                                                            subTitle: "Here's where your fellow travellers are headed",
                                                            buttonTitle: nil,
                                                            destinationCityList: listOne,
                                                            did: nil)        
        let featuredStaysTravelInspirationTwo = TravelInspirationDataModel(id: 1,
                                           sequence: 4,
                                           type: .featuredStays,
                                           imageURL: "https://res.cloudinary.com/drykvi3xr/image/upload/v1684742299/tripstick/desert-safari_ollcdv.jpg",
                                           title: "The perfect 2 days in dubai",
                                           subTitle: "Enjoy the desert in 48 hours - we will show you how!",
                                           buttonTitle: "Let's go",
                                           destinationCityList: nil,
                                           did: nil)
        let destinationListTwo = TravelInspirationDataModel(id: 562,
                                                            sequence: 3,
                                                            type: .destinationList,
                                                            imageURL: nil,
                                                            title: "Cilinary holidays for food lovers",
                                                            subTitle: "Check out the top dining spots in town",
                                                            buttonTitle: nil,
                                                            destinationCityList: listTwo,
                                                            did: nil)
        let travelInspirationList = [featuredStaysTravelInspirationOne,
                                     featuredStaysTravelInspirationTwo,
                                     destinationListTwo,
                                     destinationListOne]
        
        let HomeResponse  = HomeDataModel(lang: "en",
                                                           travelInspirationList: travelInspirationList)
        
        return HomeResponse.mapToDomainModel()
    }
}
