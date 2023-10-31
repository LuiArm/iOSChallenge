//
//  MealRow.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/9/23.
//

import SwiftUI

struct MealRow: View {
    var detail: Detail
    
    var body: some View {
        HStack{
            if detail.strMealThumb != nil {
                AsyncImage(url: URL(string: detail.strMealThumb) ){ phase in
                    if let image = phase.image {
                        image.resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                    } else if phase.error != nil {
                        Color.red
                            .frame(width: 100,height: 100)
                    }else {
                        ProgressView()
                            .frame(width: 100,height: 100)
                    }
                }
            } else {
                Color.gray.frame(width: 100,height: 100)
            }
            
            VStack(alignment: .leading, spacing: 5){
                Text(detail.strMeal)
                    .font(.headline)
            }
            
        }
    }
}

struct MealRow_Previews: PreviewProvider {
    static var previews: some View {
        MealRow(detail: Detail.example())
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
