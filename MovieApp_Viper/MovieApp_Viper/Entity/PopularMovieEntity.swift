//
//  PopularMovieEntity.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//

import Foundation

struct PopularMovieEntity: Decodable {
    let id: Int
    let title: String
    let overview: String
    let imageURL: String
    let voteAverage: Double

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case imageURL = "poster_path"
        case voteAverage = "vote_average"
    }
}
