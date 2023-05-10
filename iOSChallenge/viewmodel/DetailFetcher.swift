//
//  DetailFetcher.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/9/23.
//

import Foundation


class DetailFetcher: ObservableObject {
    @Published var details = [Detail]()
     var selectedId = "53049"
    
    init(){
        fetchAllDetails()
    }
    
    
    func fetchAllDetails() {
        
        let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(selectedId)")!
        
        let task = URLSession.shared.dataTask(with: url) { [unowned self]
            data, response, error in
            
            let decoder = JSONDecoder()
            if let data = data {
                
                do {
                    let detail = try decoder.decode(DetailList.self, from: data)
                    DispatchQueue.main.sync {
                        self.details = detail.details
                    }
                    print(detail)
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }
}
