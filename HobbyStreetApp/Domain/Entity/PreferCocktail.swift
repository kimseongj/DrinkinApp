//
//  Main.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/08.
//

import Foundation

struct cocktails: Codable {
    var cocktailName: String
    var cocktailEnglishName: String
    var imageURL: String
    var base: String
    var level: Int
    var abv: Int
    var sugarContent: Int
    var cocktailDescription: String
    var skill: [String]
    var ingredient: [String]
    var garnish: [String]
    var tool: [String]
    var glass: String
    
}
