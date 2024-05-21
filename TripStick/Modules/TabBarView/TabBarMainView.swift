//
//  TabBarMainView.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//

import SwiftUI

struct TabBarMainView: View {

    // MARK: - Constants
    private let tabs: [MainTabs] = [.home, .explore,
                                    .trips, .share, .account]

    // MARK: - SceneStorage objects
    @SceneStorage("selectedTab") var selectedTab: MainTabs = .home

    var body: some View {
        GeometryReader { proxy in
            VStack {
                Spacer()
                HStack(alignment: .top) {
                    ForEach(tabs, id: \.self) { tab in
                        Spacer()
                        
                        Button {
                            withAnimation {
                                selectedTab = tab
                            }
                        } label: {
                            VStack(spacing: 10) {
                                Rectangle()
                                    .fill(Color.theme.primary)
                                    .frame(width: 32, height: 2)
                                    .isHidden(selectedTab != tab)
                                Image(systemName: tab.getTabImage(selectedTab: selectedTab))
                                    .foregroundColor(tab == selectedTab ? .theme.primary : .theme.secondary)
                                    .frame(width: 20, height: 20)
                                
                                Text(tab.getTabTitle())
                                    .foregroundColor(tab == selectedTab ? .theme.primary : .theme.secondary)
                                    .font(.caption)
                            }
                        }
                        Spacer()
                    }
                }.padding(.bottom, AppMethods.getSafeAreaBottom() + 10)
                    .background(Color.white)
                    .roundedCorner(16, corners: [.topLeft, .topRight])
                    .shadow(color: .black.opacity(0.08), radius: 16, x: 8, y: -2)
            }
        }
    }
}
#Preview {
    TabBarMainView()
}
