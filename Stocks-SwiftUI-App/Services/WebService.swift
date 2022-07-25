//
//  WebService.swift
//  Stocks-SwiftUI-App
//
//  Created by Mitya Kim on 7/25/22.
//

import Foundation

class WebService {
    
    func getNews(completion: @escaping ([Article]?) -> ()) {
        
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/top-news") else { fatalError("URL is not correct") }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let news = try? JSONDecoder().decode([Article].self, from: data)
            DispatchQueue.main.async {
                completion(news)
            }
            
        }.resume()
    }
    
    func getStocks(completion: @escaping ([Stock]?) -> ()) {
        
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/stocks") else { fatalError("URL is not correct") }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
               return
            }
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion(nil) : completion(stocks)
            
        }.resume()
    }
}
