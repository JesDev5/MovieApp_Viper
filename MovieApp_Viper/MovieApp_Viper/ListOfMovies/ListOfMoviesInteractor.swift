//
//  ListOfMoviesInteractor.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//
import Foundation

protocol ListOfMoviesBusinessLogic  {
                         
    func getListOfMovies() async -> PopularMovieResponseEntity
}

class ListOfMoviesInteractor: ListOfMoviesBusinessLogic {
    var presenter: ListOfMoviesPresentationLogic?
        
    func getListOfMovies() async -> PopularMovieResponseEntity {
        //let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key= 6db0403d1c20559e1d5e62d5eecdf34c")!
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=6db0403d1c20559e1d5e62d5eecdf34c")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        let decodeData = try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
        return decodeData
    }
}
        
        
        
        
    
                                          
    
