//
//  TabBarView.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//

import SwiftUI

struct TabBarView: View {

    // MARK: - SceneStorage objects
    @SceneStorage("selectedTab") var selectedTab = MainTabs.home


    var body: some View {
        ZStack(alignment: .top) {

            TabView(selection: $selectedTab) {
                ContentView()
                    .tag(MainTabs.home)  
                
                ContentView()
                    .tag(MainTabs.explore)

                ContentView()
                    .tag(MainTabs.trips)

                ContentView()
                    .tag(MainTabs.share)

                ContentView()
                    .tag(MainTabs.account)
            }
            TabBarMainView()

        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TabBarView()
}
