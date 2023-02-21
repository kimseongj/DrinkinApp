//
//  ProductDetail.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/20.
//

import Foundation

struct ProductDetail: Codable {
    var id: Int
    var cocktailNameKorean: String
    var cocktailNameEnglish: String
    var imageURI: String
    var description: String
    var recipeList: [String]
    var abv: String
    var level: String
    var sugarContent: String
    var categoryList: [Category]
    var ingredientList: [Ingredient]
}

struct Category: Codable {
    
}

struct Ingredient: Codable {
    
}

struct ToolList: Codable {
    var id: Int
    var toolNameKorean: String
}

struct SkillList: Codable {
    var id: Int
    var skillNameKorean: String
}

struct GlassList: Codable {
    var id: Int
    var glassNameKorean: String
}
