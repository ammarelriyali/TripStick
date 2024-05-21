//
//  HomeViewModel.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import Foundation


@MainActor
class HomeViewModel: ObservableObject, Paginatable {
   
    @Published var data: [TravelInspirationDomainModel] = []
    @Published var isLoading: Bool = false
    @Published var listIsFull = false
    @Published var errorMsg = ""
    
     var page = 1
     var totalItemsCount = 0
    
    private let useCase: HomeUseCaseProtocol
    
    init(useCase: HomeUseCaseProtocol) {
        self.useCase = useCase
    }
    
    
    private func getData() async -> [TravelInspirationDomainModel] {
        
        
        let response = await useCase.getHomeData()
        switch response {
        case .success(let data):
            listIsFull = true
            
            return data.travelInspirationList?
                .sorted(by: {firstTravelInspiration, SecondTravelInspiration in firstTravelInspiration.sequence ?? 0 > SecondTravelInspiration.sequence ?? 0}) ?? []
        case .failure(let error):
            self.errorMsg = error.localizedDescription
            print(errorMsg)
        }
        return []
    }
    
    func loadDataList() async {
        setUpHomeDummyData()
        isLoading = true
        data = await getData()
        isLoading = false
    }
    
    func loadMoreDataList() async {
       
    }
    
    
    private func setUpHomeDummyData() {
        let listOne = [DestinationCityDomainModel(cityID: 89712389,
                                                title: "Paris",
                                                subTitle: "France",
                                                imageURL: "https://media.cnn.com/api/v1/images/stellar/prod/230324090551-01-visiting-france-during-protests-what-to-know-top.jpg"),
                       DestinationCityDomainModel(cityID: 456281,
                                                title: "Ghent",
                                                subTitle: "Belgium",
                                                imageURL: "https://www.travelanddestinations.com/wp-content/uploads/2020/11/Beautiful-Places-in-Belgium-Ghent-1.jpg")]
        let listTwo = [DestinationCityDomainModel(cityID: 1253456671,
                                                title: "Dubai",
                                                subTitle: "UAE",
                                                imageURL: "https://www.visitdubai.com/-/media/images/leisure/detail-pages/explore-dubai/1-3-dubai-neighbourhoods-t34/dubai-neighborhood-business-bay.jpg"),
                       DestinationCityDomainModel(cityID: 877832179,
                                                title: "Abu Dhabi",
                                                subTitle: "UAE",
                                                imageURL: "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0a/89/c4/66.jpg")]
        
        let featuredStaysTravelInspirationOne = TravelInspirationDomainModel(id: 1,
                                           sequence: 1,
                                           type: .featuredStays,
                                           imageURL: "https://res.cloudinary.com/drykvi3xr/image/upload/v1684742300/tripstick/scuba-diving_h2iagu.jpg",
                                           title: "17 cool stays by the water for a once-in-a-lifetime trip",
                                           subTitle: "Overwater villas, underwater hotels, cliffside retreats, and more.",
                                           buttonTitle: "Explore",
                                           destinationCityList: nil,
                                           did: nil)
        let destinationListOne = TravelInspirationDomainModel(id: 562,
                                                            sequence: 2,
                                                            type: .destinationList,
                                                            imageURL: nil,
                                                            title: "Top destinations for your next holiday",
                                                            subTitle: "Here's where your fellow travellers are headed",
                                                            buttonTitle: nil,
                                                            destinationCityList: listOne,
                                                            did: nil)
        let featuredStaysTravelInspirationTwo = TravelInspirationDomainModel(id: 1,
                                           sequence: 4,
                                           type: .featuredStays,
                                           imageURL: "https://res.cloudinary.com/drykvi3xr/image/upload/v1684742299/tripstick/desert-safari_ollcdv.jpg",
                                           title: "The perfect 2 days in dubai",
                                           subTitle: "Enjoy the desert in 48 hours - we will show you how!",
                                           buttonTitle: "Let's go",
                                           destinationCityList: nil,
                                           did: nil)
        let destinationListTwo = TravelInspirationDomainModel(id: 562,
                                                            sequence: 3,
                                                            type: .destinationList,
                                                            imageURL: nil,
                                                            title: "Cilinary holidays for food lovers",
                                                            subTitle: "Check out the top dining spots in town",
                                                            buttonTitle: nil,
                                                            destinationCityList: listTwo,
                                                            did: nil)
        data = [featuredStaysTravelInspirationOne,
                                     featuredStaysTravelInspirationTwo,
                                     destinationListTwo,
                                     destinationListOne]
    }
    
    func createFakeDataHomeCardInfo() -> [HomeCardInfoModel]{
        [HomeCardInfoModel(imageName: "ic_global",
                                                       text: "Travel inspiration"),
                                     HomeCardInfoModel(imageName: "ic_question",
                                                       text: "Why choose tripstick?")]
    }
}

