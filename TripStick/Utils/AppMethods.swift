//
//  AppMethods.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//

import Foundation
import UIKit

struct AppMethods {
    
    static func getSafeAreaBottom() -> CGFloat {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let safeAreaInsets = scene?.windows.first?.safeAreaInsets ?? .zero
        
        return  safeAreaInsets.bottom
    }
}
