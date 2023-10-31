//
//  MealDetailView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/9/23.
//

import SwiftUI

struct MealDetailView: View {
    var detail: Detail
    
    let image = "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg"
    
    var body: some View {
        ScrollView{
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
                    Text(detail.strInstructions)
                }.padding()
                    .navigationBarTitleDisplayMode(.inline)
            }
            
        }
      
    }
}




struct MealDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailView(detail: Detail.example())
    }
}
