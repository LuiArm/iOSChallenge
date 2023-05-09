//
//  LoadingView.swift
//  iOSChallenge
//
//  Created by luis armendariz on 5/8/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Text("🍩").font(.system(size: 40))
            ProgressView()
            Text("Getting desserts.....")
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
