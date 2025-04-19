//
//  spotView.swift
//  0411Hw
//
//  Created by 劉丞晏 on 2025/4/16.
//

import SwiftUI


struct SpotRowView: View {
    let spot: Spot
    @State private var expanded = false
    @State private var selectedImageIndex = 0
    @Environment(\.horizontalSizeClass) private var hSizeClass


    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            TabView(selection: $selectedImageIndex) {
                ForEach(Array(spot.imgs.enumerated()), id: \.offset) { index, imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(12)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(height: hSizeClass == .regular ? 400 : 200)
            .frame(maxWidth: .infinity)

            HStack {
                Text(spot.name)
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.down")
                    .rotationEffect(.degrees(expanded ? 180 : 0))
                    .animation(.easeInOut(duration: 0.25), value: expanded)
                    .onTapGesture {
                        expanded.toggle()
                    }
            }

            if expanded {
                Text(spot.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .transition(.opacity)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
        .padding(.horizontal)
    }
}

struct CitySpotsView: View {
    let city: City

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    ForEach(city.spots) { spot in
                        SpotRowView(spot: spot)
                    }
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("\(city.name) 景點")
        }
    }
}

#Preview {
    CitySpotsView(city: cities[0]) // 顯示魁北克景點
}

