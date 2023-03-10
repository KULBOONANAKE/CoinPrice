//
//  StatisticView.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 10/3/23.
//

import SwiftUI

struct StatisticView: View {
    let model : StatisticModel
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(model.title)
                .font(.caption)
            Text(model.value)
                .font(.headline)
            if let percentChange = model.percentageChange {
                HStack(spacing: 4){
                    Image(systemName: "triangle.fill")
                        .font(.caption)
                    Text(percentChange.toPercent())
                        .font(.caption)
                        .bold()
                }
                .foregroundColor(.green)
            }
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(model: dev.stat3)
    }
}
