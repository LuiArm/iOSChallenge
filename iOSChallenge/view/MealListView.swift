//
//  MealListView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import SwiftUI

struct MealListView: View {
    let meals = [Meals]()
    
    var body: some View {
        List {
            ForEach(meals, id: \.idMeal) { meal in 
                Text(meal.strMeal)
            }
        }
    }
}

struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
    }
}
