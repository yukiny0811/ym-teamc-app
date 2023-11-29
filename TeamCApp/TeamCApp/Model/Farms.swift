//
//  Farms.swift
//  TeamCApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import TeamCLibrary

extension FarmData {
    
    static let farms: [FarmData] = [
        .farm1
    ]
    
    static let farm1 = FarmData(
        name: "なんとか農園",
        date: Date() + 10.days,
        image: UIImage(named: "sampleFarm")!.pngData()!,
        tokuchou: "こんな特徴があります",
        osusumePoint: "ここらへんがおすすめです",
        mapLocationLat: 35.615264,
        mapLocationLong: 138.5332146,
        nagare: [
            "12:00集合",
            "ぶどうをかる",
            "14:00解散",
        ]
    )
}
