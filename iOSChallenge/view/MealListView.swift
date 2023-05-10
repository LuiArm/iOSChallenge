//
//  MealListView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import SwiftUI

struct MealListView: View {
    let meals: [Meal]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(meals, id: \.idMeal) { meal in
                    NavigationLink{
                        MealDetailView()
                    } label: {
                        MealRow(meal: meal)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("What's Bakin?")
        }
    }
}


struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView(meals: [Meal]())
    }
}
