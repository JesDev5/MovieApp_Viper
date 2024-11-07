//
//  ListOfMoviesInteractor.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//
import Foundation

//el protocolo define reglas que una clase debe cumplir
protocol ListOfMoviesBusinessLogic  {
                          //asincrona y devuelve un objeto de tipo o nil o caso de error
    func getListOfMovies() async throws -> PopularMovieResponseEntity?
}

//define esta clase que implemente el protocolo
class ListOfMoviesInteractor: ListOfMoviesBusinessLogic {
    var presenter: ListOfMoviesPresentationLogic
        
    init(presenter: ListOfMoviesPresentationLogic) {
        self.presenter = presenter
    }
    
    func getListOfMovies() async throws -> PopularMovieResponseEntity? {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key= 6db0403d1c20559e1d5e62d5eecdf34c")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
        
   }
        
}
        
        
        
        
    
                                          
    
