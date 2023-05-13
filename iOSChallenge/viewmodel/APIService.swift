//
//  DetailFetcher.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/9/23.
//

import Foundation


class APIService {
    
    func fetchDetails(selectedId: String) -> Void {
        let url = creatURL(for: selectedId)
        
    }
    

        
        
        //https://themealdb.com/api/json/v1/1/lookup.php?i=(id)
        
        func creatURL(for selectedId: String) -> URL? {
            let baseURL = "https://themealdb.com/api/json/v1/1/lookup.php?"
            
            let queryItems = [URLQueryItem(name: "i", value: selectedId)]
            
            var componenets = URLComponents(string: baseURL)
            componenets?.queryItems = queryItems
            return componenets?.url
        }
        
    }
