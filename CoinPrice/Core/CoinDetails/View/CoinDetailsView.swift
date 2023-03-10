//
//  CoinDetailsView.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 10/3/23.
//

import SwiftUI

struct CoinDetailsView: View {
    let viewModel: CoinDetailsViewModel
    
    
    init(coin: Coin){
        self.viewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            // chart
            ChartView(viewModel: viewModel)
                .frame(height: 200)
                .padding(.vertical)
                .shadow(color: viewModel.chartLineColor, radius: 10)
                .shadow(color: viewModel.chartLineColor.opacity(0.5), radius: 10)
            
            // overview
            CoinDetailSection(model: viewModel.overviewSectionModel)
                .padding(.vertical)
            
            // additonal details
            CoinDetailSection(model: viewModel.addtitionalDetailSectionModel)
                .padding(.vertical)
            
        }
        .padding()
        .navigationTitle(viewModel.coinName)
        
    }
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView(coin: dev.coin)
    }
}
