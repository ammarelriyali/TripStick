//
//  HomeInfoView.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import SwiftUI

struct HomeInfoView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            HomeTopView()
                .padding(.all, 12)
                .padding(.bottom, 12)
            Divider()
            LazyHStack(content: {
                ForEach(1...10, id: \.self) { count in
                    /*@START_MENU_TOKEN@*/Text("Placeholder \(count)")/*@END_MENU_TOKEN@*/
                }
            })
        }
    }
}
#Preview {
    HomeInfoView()
}

