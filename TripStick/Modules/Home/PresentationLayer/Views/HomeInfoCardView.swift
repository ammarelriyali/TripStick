//
//  HomeInfoCardView.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import SwiftUI

struct HomeInfoCardView: View {
    let imageName: String
    let text: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .stroke(lineWidth: 1)
            .foregroundColor(.gray)
            .frame(width: 180, height: 180)
            .overlay {
                VStack(alignment: .leading,spacing: 0) {
                    HStack{
                        Image(imageName)
                            .resizable()
                            .frame(width: 70,height: 70)
                            .padding()
                        Spacer()
                    }
                    Spacer()
                    Text(text)
                        .font(.title3)
                        .bold()
                        .padding()
                }
            }
    }
}

#Preview {
    HomeInfoCardView(imageName: "ic_app_name_and_image",
                     text: "Title")
}
