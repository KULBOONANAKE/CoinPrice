//
//  LoadingIndicator.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 11/3/23.
//

import SwiftUI

struct LoadingIndicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .accentColor(.white)
            .scaleEffect(x:1.5, y:1.5, anchor: .center)
            .frame(width: 80, height: 80)
            
    }
}

struct LoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicator()
    }
}
