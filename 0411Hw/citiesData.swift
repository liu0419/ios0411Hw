//
//  citiesData.swift
//  0411Hw
//
//  Created by 劉丞晏 on 2025/4/16.
//

import Foundation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let spots: [Spot]
    let hotels: [Hotel]
    // 如果未來要加：
    // let foods: [Food]
    
}

let cities: [City] = [
    City(
        name: "魁北克",
        imageName: "quebec",
        spots: [
            Spot(name: "老城區/Old Quebec", description: "魁北克最古老的街道與建築，充滿歐洲風情。", imgs: ["oldQuebec1","oldQuebec2","oldQuebec3"]),
            Spot(name: "芳堤娜城堡/Château Frontenac", description: "魁北克著名的地標飯店，建築風格宏偉。", imgs: ["castle1","castle2","castle3"]),
            Spot(name: "蒙特倫西瀑布公園/Montmorency Falls", description: "位於加拿大魁北克省的西邊，是蒙特倫西河注入聖羅倫斯河時所形成的瀑布。", imgs: ["waterfall2","waterfall1","waterfall3"]),
            Spot(name: "魁北克要塞/Citadelle de Québec", description: "歷史悠久的軍事防禦設施，提供導覽服務。", imgs: ["star1","star2","star3"])
        ],
        hotels:[
            Hotel(name:"希爾頓酒店 (Hilton Québec)",rate:4, address:"https://www.google.com/maps/place/Hilton+Quebec/@46.8104068,-71.2177543,663m/data=!3m1!1e3!4m11!3m10!1s0x4cb895d865563dcb:0xd1c0908ff7d8df85!5m4!1s2025-06-19!2i2!4m1!1i2!8m2!3d46.8104068!4d-71.2151794!16s%2Fg%2F1td2gj4w?authuser=0&entry=ttu&g_ep=EgoyMDI1MDQxMy4wIKXMDSoJLDEwMjExNjQwSAFQAw%3D%3D",
                  imgs:["hotel1"]),
            Hotel(name:"皇家港景酒店 (Hotel Port-Royal)",rate:5, address:"https://www.google.com/maps/place/H%C3%B4tel+Port-Royal/@46.8164269,-71.203352,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipMUlyOaIcBSxrMlItWUp76eSbSKmM9morx786tO!2e10!3e12!6shttps:%2F%2Flh3.googleusercontent.com%2Fp%2FAF1QipMUlyOaIcBSxrMlItWUp76eSbSKmM9morx786tO%3Dw203-h135-k-no!7i6000!8i4000!4m12!3m11!1s0x4cb8bc75b97357a1:0xb8b3303b80f0ea38!5m4!1s2025-06-19!2i2!4m1!1i2!8m2!3d46.816577!4d-71.203142!10e5!16s%2Fg%2F1hc86bvq5?authuser=0&entry=ttu&g_ep=EgoyMDI1MDQxMy4wIKXMDSoJLDEwMjExNjQwSAFQAw%3D%3D",
                  imgs:["hotel2"]),
            Hotel(name:"魁北克勞里爾堡酒店 (Hotel Chateau Laurier Québec)",rate:3, address:"https://www.google.com/maps/place/H%C3%B4tel+Ch%C3%A2teau+Laurier/@46.8064922,-71.2176757,17z/data=!4m11!3m10!1s0x4cb895d771b0b6ff:0xaff433e8f888cc10!5m4!1s2025-06-19!2i2!4m1!1i2!8m2!3d46.8064922!4d-71.2151008!16s%2Fg%2F1tpc7kxt?authuser=0&entry=ttu&g_ep=EgoyMDI1MDQxMy4wIKXMDSoJLDEwMjExNjQwSAFQAw%3D%3D",
                  imgs:["hotel3"])
        ]
    ),
    City(name: "蒙特婁", imageName: "montreal", spots: [], hotels: []),
    City(name: "多倫多", imageName: "toronto", spots: [], hotels: [])
]

struct Spot: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imgs: [String]
}

struct Hotel: Identifiable {
    let id = UUID()
    let name: String
    let rate: Int  // 1~5 顆星
    let address: String // 放地圖或網址字串
    let imgs: [String]
}


