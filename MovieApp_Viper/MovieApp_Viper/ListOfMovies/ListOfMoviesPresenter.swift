//
//  ListOfMoviesPresenter.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//

import Foundation

protocol ListOfMoviesPresentationLogic {
    func onViewAppear()
}

class ListOfMoviesPresenter: ListOfMoviesPresentationLogic {
    
    weak var viewController: ListOfMoviesDisplayLogic?
    var interactor: ListOfMoviesInteractor?
    var popularMovieResponse: PopularMovieResponseEntity?

    
    init(viewController: ListOfMoviesDisplayLogic? = nil, interactor: ListOfMoviesInteractor?  = nil) {
        self.viewController = viewController
        self.interactor = interactor
        
    
    }
    
    func onViewAppear() {
        Task {
            popularMovieResponse = await interactor?.getListOfMovies()
        }
        guard let models: [PopularMovieEntity] = popularMovieResponse?.results as? [PopularMovieEntity] else { return }
        viewController?.displayData(movies: models)
    }
}

