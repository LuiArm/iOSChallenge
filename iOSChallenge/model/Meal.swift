//
//  Meal.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import Foundation

struct Meals: Codable{
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}

struct Response: Codable {
    let meals: [Meals]
}
