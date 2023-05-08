//
//  MealFetcher.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import Foundation


class ViewModel: ObservableObject {
    @Published var response: [Meals] = []
    
    
    func fetch() {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            /// convert to json
            do {
                let meals = try JSONDecoder().decode([Meals].self,
                from: data)
                DispatchQueue.main.async {
                    self?.response = meals
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
