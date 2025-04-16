//
//  CityDetailTabView.swift
//  0411Hw
//
//  Created by 劉丞晏 on 2025/4/16.
//

import Foundation
import SwiftUI

struct CityDetailTabView: View {
    let city: City

    var body: some View {
        TabView {
            CitySpotsView(city: city)
                .tabItem {
                    Label("景點", systemImage: "map")
                }

            CityHotelsView(city: city)
                .tabItem {
                    Label("飯店", systemImage: "bed.double.fill")
                }

//            CityFoodsView(foods: city.foods, cityName: city.name)
//                .tabItem {
//                    Label("美食", systemImage: "fork.knife")
//                }
        }
    }
}
