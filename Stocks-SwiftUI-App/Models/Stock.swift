//
//  Stock.swift
//  Stocks-SwiftUI-App
//
//  Created by Mitya Kim on 7/25/22.
//

import Foundation


struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
