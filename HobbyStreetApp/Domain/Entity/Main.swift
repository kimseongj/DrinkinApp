//
//  Main.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/20.
//

import Foundation

struct MainView: Codable {
    var results: Results
}

struct Results: Codable {
    var id: Int
    var cocktailNameKorean: String
    var imageURI: String
    var levelScore: String
    var abvScore: String
    var sugarContentScore: String
    var description: String
    var categoryList: [CategoryList]
    var ingredientList: [IngredientList]
    var garnishList: [String]
}

struct CategoryList: Codable {
    var categoryNameKorean: String
    var hold: Bool
}

struct IngredientList: Codable {
    var ingredientNameKorean: String
    var hold: Bool
}


