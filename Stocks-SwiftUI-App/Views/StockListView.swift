//
//  StockListView.swift
//  Stocks-SwiftUI-App
//
//  Created by Mitya Kim on 7/25/22.
//

import SwiftUI

struct StockListView: View {
    
    let stocks: [StockViewModel]
    
    var body: some View {
        List(self.stocks, id: \.symbol) { stock in
            StockViewCell(stock: stock)
        }
    }
}

struct StockViewCell: View {
    
    let stock: StockViewModel
    
    var body: some View {
        
        return HStack {
            
            VStack(alignment: .leading) {
                Text(stock.symbol)
                    .font(.custom("Arial", size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                Text(stock.description)
                    .font(.custom("Arial", size: 18))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack {
                Text("\(stock.price)")
                    .foregroundColor(.white)
                    .font(.custom("Arial", size: 22))
                
                Button(stock.change) {
                    
                }.frame(width: 75)
                    .padding(5)
                    .background(.red)
                    .cornerRadius(7)
            }
        }
    }
}

struct StockListView_Previews: PreviewProvider {
    static var previews: some View {
        
        let stock = Stock(symbol: "Google", description: "Google Stocks", price: 777, change: "+0.888")
        
        return StockListView(stocks: [StockViewModel(stock: stock)])
            .preferredColorScheme(.dark)
    }
}
