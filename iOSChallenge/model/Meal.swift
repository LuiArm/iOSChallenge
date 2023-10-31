//
//  Meal.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import Foundation

struct Meal: Codable, Hashable, Identifiable {
    var id: String
    
    let idMeal: String
    let strMeal: String
    let strMealThumb: String

    
    static func example1() -> Meal {
        return Meal(id: "1", idMeal: "53049", strMeal: "Apam balik", strMealThumb: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg")
                    
    }
}

struct MealList: Codable {
    let meals: [Meal]
}
