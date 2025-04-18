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
}

let cities: [City] = [
    // 魁北克（已存在）
    City(
        name: "魁北克",
        imageName: "quebec",
        spots: [
            Spot(name: "老城區/Old Quebec", description: "魁北克最古老的街道與建築，充滿歐洲風情。", imgs: ["oldQuebec1","oldQuebec2","oldQuebec3"]),
            Spot(name: "芳堤娜城堡/Château Frontenac", description: "魁北克著名的地標飯店，建築風格宏偉。", imgs: ["castle1","castle2","castle3"]),
            Spot(name: "蒙特倫西瀑布公園/Montmorency Falls", description: "位於魁北克省西邊，是蒙特倫西河注入聖羅倫斯河時所形成的瀑布。", imgs: ["waterfall2","waterfall1","waterfall3"]),
            Spot(name: "魁北克要塞/Citadelle de Québec", description: "歷史悠久的軍事防禦設施，提供導覽服務。", imgs: ["star1","star2","star3"])
        ],
        hotels:[
            Hotel(name:"希爾頓酒店 (Hilton Québec)", rate:4, address:"https://www.google.com/maps/place/Hilton+Quebec", imgs:["hotel1"]),
            Hotel(name:"皇家港景酒店 (Hotel Port-Royal)", rate:5, address:"https://www.google.com/maps/place/H%C3%B4tel+Port-Royal", imgs:["hotel2"]),
            Hotel(name:"勞里爾堡酒店 (Hotel Château Laurier)", rate:3, address:"https://www.google.com/maps/place/H%C3%B4tel+Ch%C3%A2teau+Laurier", imgs:["hotel3"])
        ]
    ),

    // 新增：蒙特婁
    City(
        name: "蒙特婁",
        imageName: "montreal",
        spots: [
            Spot(
                name: "老港區/Old Port of Montreal",
                description: "歷史悠久的港口區域，現今改建為文化活動與散步好去處。",
                imgs: ["oldPort1","oldPort2","oldPort3"]
            ),
            Spot(
                name: "聖母聖殿大教堂/Basilique Notre-Dame",
                description: "哥德復興式教堂，以華麗的內部裝飾聞名。",
                imgs: ["basilica1","basilica2","basilica3"]
            ),
            Spot(
                name: "皇家山公園/Mount Royal Park",
                description: "由奧姆斯特德設計，可俯瞰整個城市的天然綠地。",
                imgs: ["mountRoyal1","mountRoyal1","mountRoyal1"]
            ),
            Spot(
                name: "植物園/Montreal Botanical Garden",
                description: "擁有多個主題花園與溫室展示，四季皆宜參觀。",
                imgs: ["garden1","garden2","garden1"]
            )
        ],
        hotels: [
            Hotel(
                name: "聖詹姆斯酒店 (Hotel Le St-James)",
                rate: 5,
                address: "https://www.google.com/maps/place/Hotel+Le+St-James+Montreal",
                imgs: ["hotel1"]
            ),
            Hotel(
                name: "伊莉莎白費爾蒙特酒店 (Fairmont The Queen Elizabeth)",
                rate: 5,
                address: "https://www.google.com/maps/place/Fairmont+The+Queen+Elizabeth",
                imgs: ["hotel2"]
            ),
            Hotel(
                name: "奈利根酒店 (Hotel Nelligan)",
                rate: 4,
                address: "https://www.google.com/maps/place/Hotel+Nelligan",
                imgs: ["hotel3"]
            )
        ]
    ),

    // 新增：多倫多
    City(
        name: "多倫多",
        imageName: "toronto",
        spots: [
//            Spot(
//                name: "CN塔/CN Tower",
//                description: "世界知名地標，可眺望整個多倫多市景。",
//                imgs: ["cntower1","cntower2","cntower3"]
//            ),
//            Spot(
//                name: "皇家安大略博物館/Royal Ontario Museum",
//                description: "加拿大最大博物館，收藏自然史與文化史藏品。",
//                imgs: ["rom1","rom2","rom3"]
//            ),
//            Spot(
//                name: "蒸餾廠區/Distillery District",
//                description: "維多利亞時代工業建築改造的文創街區，有藝術畫廊與餐廳。",
//                imgs: ["distillery1","distillery2","distillery3"]
//            ),
//            Spot(
//                name: "多倫多群島/Toronto Islands",
//                description: "乘船可達，島上適合騎行、野餐與戲水。",
//                imgs: ["islands1","islands2","islands3"]
//            )
        ],
        hotels: [
//            Hotel(
//                name: "皇家約克費爾蒙特酒店 (Fairmont Royal York)",
//                rate: 5,
//                address: "https://www.google.com/maps/place/Fairmont+Royal+York",
//                imgs: ["tohotel1"]
//            ),
//            Hotel(
//                name: "麗思卡爾頓酒店 (The Ritz-Carlton Toronto)",
//                rate: 5,
//                address: "https://www.google.com/maps/place/The+Ritz-Carlton+Toronto",
//                imgs: ["tohotel2"]
//            ),
//            Hotel(
//                name: "喜來登中心酒店 (Sheraton Centre Toronto Hotel)",
//                rate: 4,
//                address: "https://www.google.com/maps/place/Sheraton+Centre+Toronto+Hotel",
//                imgs: ["tohotel3"]
//            )
        ]
    )
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


