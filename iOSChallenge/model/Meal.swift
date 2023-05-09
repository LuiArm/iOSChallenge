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
    
    
    static func example1() -> Meal {
        return Meal(strMeal: "Apam balik",
                    strMealThumb: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg",
                    idMeal: "53049")
    }
}

struct MealList: Codable {
    let meals: [Meal]
}
