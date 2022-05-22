//
//  CustomCorner.swift
//  AppStoreHero (iOS)
//
//  Created by 최형우 on 2022/05/22.
//

import SwiftUI

struct CustomCorner: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius ))
        return Path(path.cgPath)
    }
}

