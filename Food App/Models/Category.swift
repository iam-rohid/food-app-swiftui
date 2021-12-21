//
//  MeelCategoryModel.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import Foundation

struct Categories: Codable {
    let categories: [Category]
}

struct Category: Codable, Identifiable {
    let id: String
    let name: String
    let thumbnailUrl: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id = "idCategory"
        case name = "strCategory"
        case thumbnailUrl = "strCategoryThumb"
        case description = "strCategoryDescription"
    }
}
