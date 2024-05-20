//
//  HomeTopView.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 4) {
                Image(Constants.HomeScreen.appImageWithName)
                    .resizable()
                    .frame(width: 150, height: 50)
                Spacer()
                Image(systemName: Constants.HomeScreen.iconHeart)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.all, 4)
                    
                Image(systemName: Constants.HomeScreen.iconNotification)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.all, 4)
            }
            
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 2)
                    .frame(height: 50)
                    .overlay {
                        HStack(spacing: 12) {
                            Image(systemName: Constants.HomeScreen.iconSearch)
                                .resizable()
                                .frame(width: 20,height: 20)
                            Text(Constants.HomeScreen.searchHint)
                            Spacer()
                        }.padding()
                    }
            
        }
    }
}

#Preview {
    HomeTopView()
}
