//
//  infoModel.swift
//  Movies
//
//  Created by Consultant on 1/8/23.
//

import Foundation

struct infoModel {
    let title: String
    let lenguage: String
    let overview: String
    let poster: URL?
    
    static let empty: infoModel = .init(title: "No Title", lenguage: "NA", overview: "na", poster: nil)
}
