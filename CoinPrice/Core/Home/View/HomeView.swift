//
//  HomeView.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 9/3/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    // top movers view
                    TopMoverView(viewModel: viewModel)
                    
                    Divider()
                    // all coins view
                    AllCoinsView(viewModel: viewModel)
                }
                .navigationTitle("Live Prices")
            }
            
            if viewModel.isLoading {
                LoadingIndicator()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
