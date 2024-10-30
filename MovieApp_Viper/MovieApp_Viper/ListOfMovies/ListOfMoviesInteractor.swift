//
//  ListOfMoviesInteractor.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//

import Foundation

protocol ListOfMoviesBussinessLogic  {
       
}

class ListOfMoviesInteractor: ListOfMoviesBussinessLogic {
    var presenter: ListOfMoviesPresentationLogic
    
    init(presenter: ListOfMoviesPresentationLogic) {
        self.presenter = presenter
    }
    
}
