//
//  NewsArticleViewModel.swift
//  Stocks-SwiftUI-App
//
//  Created by Mitya Kim on 7/25/22.
//

import Foundation


struct NewsArticleViewModel {
    
    let article: Article
    
    var imageURL: String {
        return self.article.imaageURL
    }
    
    var title: String {
        return self.article.title
    }
    
    var publication: String {
        return self.article.publication.uppercased()
    }
}
