//
//  Meal.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import Foundation

struct Meal: Codable, Hashable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}

struct MealList: Codable {
    let meals: [Meal]
}
