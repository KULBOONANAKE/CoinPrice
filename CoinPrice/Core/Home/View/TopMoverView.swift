//
//  TopMoverView.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 9/3/23.
//

import SwiftUI

struct TopMoverView: View {
    @StateObject var viewModel : HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topMovingCoins) { coin in
                        NavigationLink {
                            LazyNavigationView(CoinDetailsView(coin: coin)
                            )
                        } label: {
                            TopMoverItemView(coin: coin)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

//struct TopMoverView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoverView(viewModel: HomeViewModel())
//    }
//}
