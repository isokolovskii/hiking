//
//  Hike.swift
//  Hiking
//
//  Created by Иван Соколовский on 01.04.2020.
//  Copyright © 2020 Ivan Sokolovskii. All rights reserved.
//

import Foundation

struct Hike {
    let name: String
    let imageUrl: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Salmonberry Trail", imageUrl: "sal", miles: 6),
            Hike(name: "Tom, Dick and Harry Mountain", imageUrl: "tom", miles: 5.8),
            Hike(name: "Tamanaws Falls", imageUrl: "tam", miles: 5)
        ]
    }
}
