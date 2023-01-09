//
//  movieModel.swift
//  Movies
//
//  Created by Consultant on 1/8/23.
//

import Foundation


struct movieModel: Codable {
    let page : Int
    let results: [Details]
    let total_pages: Int
    let total_results: Int
    
}

struct Details: Codable, Identifiable {
    let adult: Bool
    let id = UUID()
    let language: String
    let title: String
    let overview: String
    let poster: String
    
    
    enum CodingKeys: String, CodingKey {
        case adult
        case language = "original_language"
        case title = "original_title"
        case overview
        case poster = "poster_path"
    }
     
}
