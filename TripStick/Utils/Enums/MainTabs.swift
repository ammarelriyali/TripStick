//
//  MainTabs.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//

enum MainTabs: Int {
    case home = 0
    case explore = 1
    case trips = 2
    case share = 3
    case account = 4
    
    func getTabImage(selectedTab: MainTabs) -> String {
        switch self {
        case .home:
            return Constants.TabBarIcons.home
        case .explore:
            return Constants.TabBarIcons.explore
        case .trips:
            return Constants.TabBarIcons.trips
        case .share:
            return Constants.TabBarIcons.share
        case .account:
            return Constants.TabBarIcons.account
        }
    }
    
    func getTabTitle() -> String {
        switch self {
        case .home:
            return Constants.TabBar.home
        case .explore:
            return Constants.TabBar.explore
        case .trips:
            return Constants.TabBar.trips
        case .share:
            return Constants.TabBar.share
        case .account:
            return Constants.TabBar.account
        }
    }
}
