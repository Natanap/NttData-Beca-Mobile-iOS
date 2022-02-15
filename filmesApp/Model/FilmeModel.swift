//
//  FilmeModel.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 14/02/22.
//

import UIKit
import Foundation

class FilmeModel: Codable {
    var adult: Bool?
    var backdropPath: String?
    var genreIds: Int?
    var id: Int?
    var originalLanguage: String?
    var originalTitle: String?
    var overview: String?
    var popularity: Double?
    var posterPath: String?
    var releaseDate: Int?
    var title: String?
    var video: Bool?
    var voteAverage: Double?
    var voteCount: Int?
    
    
    init (adult: Bool?,
          backdropPath: String?,
          genreIds: Int?,
          id: Int?,
          originalLanguage: String?,
          originalTitle: String?,
          overview: String?,
          popularity: Double?,
          posterPath: String?,
          releaseDate: Int?,
          title: String?,
          video: Bool?,
          voteAverage: Double?,
          voteCount: Int?) {
        self.adult = adult
        self.backdropPath = backdropPath
        self.genreIds = genreIds
        self.id = id
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.releaseDate = releaseDate
        self.title = title
        self.video = video
        self.voteAverage = voteAverage
        self.voteCount = voteCount
    }
        
    enum CodingKeys: String, CodingKey{
        case adult = "adult"
        case backdropPath = "backdrop_Path"
        case genreIds = "genre_ids"
        case id = "id"
        case originalLanguage = "original_language"
        case originalTitle = "original_titulo"
        case overview = "overview"
        case popularity = "popularity"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title = "title"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

