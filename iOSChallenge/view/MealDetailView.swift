//
//  MealDetailView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/9/23.
//

import SwiftUI

struct MealDetailView: View {
    let image = "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg"
    var body: some View {
        VStack{
            if image != nil {
                AsyncImage(url: URL(string: image) ){ phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(12)
                    } else if phase.error != nil {
                        Color.red
                            .frame(width: 300,height: 300)
                    }else {
                        ProgressView()
                            .frame(width: 300,height: 300)
                    }
                }
            } else {
                Color.gray.frame(width: 300,height: 300)
            }
            
            VStack(alignment: .leading,spacing: 5){
                Text("Apam Balik")
                    .font(.title)
                Text("Ingredients:")
                    .font(.headline)
                Text("""
                     -200ml of Milk
                     -2 Eggs
                    -60ml of Oil
                    -1600g of Flour
                    -3 tsp of Baking Powder
                    """)
                Text("Instructions:")
                    .font(.headline)
                Text("Mix milk, oil and egg together. Sift flour, baking powder and salt into the mixture. Stir well until all ingredients are combined evenly.\r\n\r\nSpread some batter onto the pan. Spread a thin layer of batter to the side of the pan. Cover the pan for 30-60 seconds until small air bubbles appear.\r\n\r\nAdd butter, cream corn, crushed peanuts and sugar onto the pancake. Fold the pancake into half once the bottom surface is browned.\r\n\r\nCut into wedges and best eaten when it is warm.")
            }.padding()
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MealDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailView()
    }
}
