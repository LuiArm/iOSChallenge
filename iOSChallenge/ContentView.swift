//
//  ContentView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/4/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject var mealFetcher = MealFetcher()
    
    var body: some View {
        if mealFetcher.isLoading{
            LoadingView()
        }else if mealFetcher.errorMessage != nil{
            ErrorView(mealFetcher: mealFetcher)
        }else {
            MealListView(meals: mealFetcher.meals, details: mealFetcher.details)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
