//
//  View+Ext.swift
//  AppStoreHero (iOS)
//
//  Created by 최형우 on 2022/05/22.
//

import SwiftUI

extension View {
    func safeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
    func offset(offset: Binding<CGFloat>) -> some View {
        self.overlay {
            GeometryReader { proxy in
                let minY = proxy.frame(in: .named("SCROLL")).minY
                
                Color.clear
                    .preference(key: OffsetKey.self, value: minY)
            }
            .onPreferenceChange(OffsetKey.self) { value in
                offset.wrappedValue = value
            }
        }
    }
}

// MARK: - Offset Key
struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
