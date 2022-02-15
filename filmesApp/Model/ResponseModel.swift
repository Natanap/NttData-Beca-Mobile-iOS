//
//  ResponseModel.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 14/02/22.
//
import UIKit
import Foundation

class ResponseModel: Codable {
    var page: Int?
    var results: [FilmeModel]?
    var totalPages: Int?
    var totalResults: Int?
    
    init (page: Int?, results: [FilmeModel]?, totalPages: Int? , totalResults: Int?) {
        self.page = page
        self.results = results
        self.totalPages = totalPages
        self.totalResults = totalResults
    }
    
    enum CodingKeys: String, CodingKey{
        case totalPages = "total_pages"
        case totalResults = "total_results"
        case page = "page"
        case results = "results"
    }
  
    
}

