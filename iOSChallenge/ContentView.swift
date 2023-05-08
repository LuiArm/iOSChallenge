//
//  ContentView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/4/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
            MealListView()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
