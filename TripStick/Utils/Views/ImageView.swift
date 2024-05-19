//
//  ImageView.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//
import SwiftUI
import Kingfisher

struct ImageView : View {
    
    let imageURL: String
    let placeholder: String?
    
    
    var body: some View {
        
        KFImage(URL(string: imageURL))
            .fade(duration: 0.25)
            .placeholder { _ in
                Image(placeholder ?? "")
                    .resizable()
                    .isHidden(placeholder == nil, remove: true)
            }.resizable()
    }
}

#Preview {
    
    ImageView(imageURL: "https://img.shields.io/badge/C-blue.svg", placeholder: "ic_empty_avatar")
}
