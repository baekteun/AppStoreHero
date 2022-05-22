//
//  ScaledButtonStyle.swift
//  AppStoreHero (iOS)
//
//  Created by 최형우 on 2022/05/22.
//

import SwiftUI

struct ScaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.94 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
