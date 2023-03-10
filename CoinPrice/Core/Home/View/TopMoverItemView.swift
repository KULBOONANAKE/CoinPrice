//
//  TopMoverItemVIew.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 9/3/23.
//

import SwiftUI
import Kingfisher

struct TopMoverItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            // coin Info
            HStack(spacing: 2) {
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.primaryTextColor)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // coin percent change
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color.theme.itemBackgroundColor)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

//
//struct TopMoverItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoverItemView()
//    }
//}
