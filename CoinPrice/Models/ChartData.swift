//
//  ChartData.swift
//  CoinPrice
//
//  Created by Kul Boonanake on 10/3/23.
//

import Foundation

struct ChartData: Identifiable {
    let id = UUID().uuidString
    let data: Date
    let value: Double
}
