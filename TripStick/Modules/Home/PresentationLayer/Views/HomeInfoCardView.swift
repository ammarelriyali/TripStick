//
//  HomeInfoCardView.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import SwiftUI

struct HomeInfoCardView: View {
    let cardInfo: HomeCardInfoModel
    var body: some View {
                VStack(alignment: .leading,spacing: 0) {
                    HStack{
                        Image(cardInfo.imageName)
                            .resizable()
                            .frame(width: 60,height: 60)
                            .padding(.horizontal, 12)
                            .padding(.top, 12)
                        Spacer()
                    }
                    Spacer()
                    Text(cardInfo.text)
                        .font(.title3)
                        .bold()
                        .padding(.horizontal, 12)
                        .padding(.bottom, 12)
                        .lineLimit(2)
                }.frame(width: 160, height: 160)
                .background(RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 1.5)
                    .foregroundColor(.gray))
    }
}

#Preview {
    HomeInfoCardView(cardInfo: HomeCardInfoModel(imageName: "ic_global",
                                                 text: "Travel inspiration"))
}
