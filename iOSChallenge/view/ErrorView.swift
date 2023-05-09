//
//  ErrorView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/8/23.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var mealFetcher: MealFetcher
    var body: some View {
        Text("error")
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(mealFetcher: MealFetcher())
    }
}
