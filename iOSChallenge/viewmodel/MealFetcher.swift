//
//  MealFetcher.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/7/23.
//

import Foundation


class MealFetcher: ObservableObject {
    @Published var meals =  [Meal]()
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    @Published var selectedId: String = ""

    init() {
        fetchAllMeals()
    }
    
    func fetchAllMeals() {
        // TODO show error if cannot create url
        isLoading = true
        
        let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
         
        let task = URLSession.shared.dataTask(with: url) { [unowned self] data, response, error in
      
            DispatchQueue.main.async {
                self.isLoading = false
            }
            let decoder = JSONDecoder()
            if let data = data {
            
                
                do {
                    let meal = try decoder.decode(MealList.self,
                    from: data)
                    DispatchQueue.main.async {
                        self.meals = meal.meals
                    }
                    print(meal)
                }catch{
                    //TODO show error
                    print(error)
                }
            }
        }
        task.resume()
    }
}
