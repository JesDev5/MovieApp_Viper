//
//  PopularMovieResponseEntity.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//

import Foundation

struct PopularMovieResponseEntity : Decodable {
    let results: [PopularMovieEntity]
    
}
