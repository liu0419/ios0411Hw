//
//  hotelView.swift
//  0411Hw
//
//  Created by 劉丞晏 on 2025/4/16.
//


import SwiftUI

struct HotelRowView: View {
    let hotel: Hotel

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Image(hotel.imgs[0])
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .cornerRadius(12)
            // 飯店名稱
            Text(hotel.name)
                .font(.headline)

            // 評分：黃色星星顯示 rate
            HStack(spacing: 2) {
                ForEach(1...5, id: \.self) { i in
                    Image(systemName: i <= hotel.rate ? "star.fill" : "star")
                        .foregroundColor(i <= hotel.rate ? .yellow : .gray)
                }
            }

            // 地圖連結
            if let url = URL(string: hotel.address) {
                Link(destination: url) {
                    Label("查看位置", systemImage: "map")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity,alignment: .leading)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
        .padding(.horizontal)
    }
}

import SwiftUI

struct CityHotelsView: View {
    let city: City

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    ForEach(city.hotels) { hotel in
                        HotelRowView(hotel: hotel)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("\(city.name) 飯店")
        }
    }
}


#Preview {
    CityHotelsView(city: cities[0]) // 顯示魁北克飯店
}
