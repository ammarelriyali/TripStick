//
//  HomeInfoView.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import SwiftUI

struct HomeInfoView: View {
    let cardsInfoList:[HomeCardInfoModel]
    
    var body: some View {
        VStack(spacing: 0) {
            
            HomeTopView()
                .padding(.all, 12)
                .padding(.bottom, 12)
            
            Divider()
            
            ScrollView(.horizontal,
                       showsIndicators: false) {
                LazyHStack(content: {
                    ForEach(cardsInfoList, id: \.id) { cardInfo in
                        HomeInfoCardView(cardInfo: cardInfo)
                            .padding(.horizontal, 8)
                    }
                }).padding(.horizontal, 8)
            }.frame(height: 170)
                .isHidden(cardsInfoList.isEmpty, remove: true)
            ZStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(Constants.HomeScreen.titleMemberCard)
                            .font(.headline)
                            .bold()
                        Text(Constants.HomeScreen.subtitleMemberCard)
                            .lineLimit(nil)
                            .font(.callout)
                        Spacer(minLength: 0)
                        Button(action: {
                            print("Join")
                        }, label: {
                            Text(Constants.HomeScreen.buttonTextMemberCard)
                                .foregroundColor(.white)
                                .font(.title3)
                                .frame(width: 120, height: 50)
                                .background(Color.black)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                        })
                    }.padding(.all, 20)
                        .padding(.vertical, 12)
                    Spacer(minLength: 0)
                    Image(Constants.HomeScreen.iconMemberCard)
                        .resizable()
                        .frame(width: 160,height: 235)
                        .offset(x: 12)
                        .overlay {
                            VStack{
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        print("close member")
                                    }, label: {
                                        Image(systemName:Constants.HomeScreen.closeIconMemberCard)
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(.black)
                                    }).padding(.all, 20)
                                }
                                Spacer()

                            }
                        }
                }.frame(height: 240)

                RoundedRectangle(cornerRadius: 40)
                    .stroke(lineWidth: 1.5)
                    .foregroundColor(.gray)
                    .frame(height: 240)
                    
            }.padding()
            
            Spacer(minLength: 0)
        }
    }
}
#Preview {
    HomeInfoView(cardsInfoList: [HomeCardInfoModel(imageName: "ic_global",
                                                   text: "Travel inspiration"),
                                 HomeCardInfoModel(imageName: "ic_question",
                                                   text: "Why choose tripstick?"),
                                 HomeCardInfoModel(imageName: "ic_question",
                                                   text: "Why choose tripstick?"),
                                 HomeCardInfoModel(imageName: "ic_question",
                                                   text: "Why choose tripstick?"),
                                 HomeCardInfoModel(imageName: "ic_question",
                                                   text: "Why choose tripstick?")])
}

