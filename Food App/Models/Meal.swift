//
//  MeelModel.swift
//  Food App
//
//  Created by Rohid on 22/12/21.
//

import Foundation

struct Meals: Codable {
    let meals: [Meal]
}

struct Meal: Codable, Identifiable {
    let id: String
    let name: String
    let thumbnailUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case thumbnailUrl = "strMealThumb"
    }
}
