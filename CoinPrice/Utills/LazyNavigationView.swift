//
//  LazyNavigationView.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 11/3/23.
//

import SwiftUI

struct LazyNavigationView<Content: View> : View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content ){
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
