//
//  HomeView.swift
//  AppStoreHero (iOS)
//
//  Created by 최형우 on 2022/05/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Monday 4 APRIL")
                            .font(.callout)
                            .foregroundColor(.gray)
                        
                        Text("Today")
                            .font(.largeTitle.bold())
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "person.circle.fill")
                            .font(.largeTitle)
                    }
                }
                .padding(.horizontal)
                
                ForEach(Today.todayDummy) { today in
                    CardView(item: today)
                }
            }
            .padding(.vertical)
        }
    }
    
    // MARK: - CardView
    @ViewBuilder
    func CardView(item: Today) -> some View {
        VStack(alignment: .leading, spacing: 15) {
            ZStack(alignment: .topLeading) {
                GeometryReader { proxy in
                    let size = proxy.size
                    
                    Image(item.artwork)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: size.height)
                        .clipShape(CustomCorner(corners: [.topLeft, .topRight], radius: 15))
                }
                .frame(height: 400)
                
                LinearGradient(colors: [
                    .black.opacity(0.5),
                    .black.opacity(0.2),
                    .clear
                ], startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(item.platformTitle.uppercased())
                        .font(.callout)
                        .fontWeight(.semibold)
                    
                    Text(item.bannerTitle)
                        .font(.largeTitle.bold())
                }
                .padding()
            }
            
            HStack(spacing: 12) {
                Image(item.appLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.platformTitle.uppercased())
                        .font(.callout)
                        .foregroundColor(.gray)
                    
                    Text(item.appName)
                        .fontWeight(.bold)
                    
                    Text(item.appDescription)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Button {
                    
                } label: {
                    Text("GET")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20)
                        .background(
                            Capsule()
                                .fill(.ultraThinMaterial)
                        )
                }
            }
            .padding([.horizontal, .bottom])
        }
        .background(
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color("BG"))
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
