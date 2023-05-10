//
//  Detail.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/9/23.
//

import Foundation


struct Detail: Codable {
    let strMeal: String
    let strInstructions: String
    let strIngredient1: String
    let strIngredient2: String
    let strIngredient3: String
    let strIngredient4: String
    let strIngredient5: String
    let strMeasure1: String
    let strMeasure2: String
    let strMeasure3: String
    let strMeasure4: String
    let strMeasure5: String
    
    static func example() -> Detail {
        return Detail(strMeal: "Apam balik",
                      strInstructions: "Mix milk, oil and egg together. Sift flour, baking powder and salt into the mixture. Stir well until all ingredients are combined evenly.\r\n\r\nSpread some batter onto the pan. Spread a thin layer of batter to the side of the pan. Cover the pan for 30-60 seconds until small air bubbles appear.\r\n\r\nAdd butter, cream corn, crushed peanuts and sugar onto the pancake. Fold the pancake into half once the bottom surface is browned.\r\n\r\nCut into wedges and best eaten when it is warm.",
                      strIngredient1: "Milk",
                      strIngredient2: "Oil",
                      strIngredient3: "Eggs",
                      strIngredient4: "Flour",
                      strIngredient5: "Baking Powder",
                      strMeasure1: "200ml",
                      strMeasure2: "60ml",
                      strMeasure3: "2",
                      strMeasure4: "1600g",
                      strMeasure5: "3 tsp")
    }
}

struct DetailList: Codable {
    let details: [Detail]
}
