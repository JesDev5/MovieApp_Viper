//
//  ListOfMoviesPresenter.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//

import Foundation

protocol ListOfMoviesPresentationLogic {
    
}

class ListOfMoviesPresenter: ListOfMoviesPresentationLogic {
    
    weak var viewController: ListOfMoviesDisplayLogic?
    //esta creando una nueva instancia de la clase
    init(viewController: ListOfMoviesDisplayLogic? = nil) {
        self.viewController = viewController
    }
    
}
