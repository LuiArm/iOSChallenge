//
//  MealListView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import SwiftUI

struct MealListView: View {
    let meals: [Meal]
    let details: [Detail]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ForEach(details) { detail in
                    NavigationLink{
                        MealDetailView(detail: detail)
                    } label: {
                        MealRow(detail: detail)
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
        MealListView(meals: [Meal](), details: [Detail]())
    }
}
