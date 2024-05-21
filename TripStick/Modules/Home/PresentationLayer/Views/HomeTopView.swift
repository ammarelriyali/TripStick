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
            
            HStack(spacing: 12) {
                Image(systemName: Constants.HomeScreen.iconSearch)
                    .resizable()
                    .frame(width: 20,height: 20)
                Text(Constants.HomeScreen.searchHint)
                Spacer()
            }.padding()
                .background(RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 1.5)
                    .foregroundColor(.gray))
                .frame(height: 50)
            
        }
    }
}

#Preview {
    HomeTopView()
}
