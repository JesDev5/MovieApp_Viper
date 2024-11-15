//
//  ListOfMoviesViewController.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//

import Foundation
import UIKit

protocol ListOfMoviesDisplayLogic: AnyObject {
    func displayData(movies: [PopularMovieEntity])
}

class ListOfMoviesViewController: UIViewController,
                                  ListOfMoviesDisplayLogic {
    
    var interactor: ListOfMoviesBusinessLogic
    var presenter: ListOfMoviesPresentationLogic?
    var router: ListOfMoviesRoutingLogic

    init(interactor: ListOfMoviesBusinessLogic, router: ListOfMoviesRoutingLogic) {
        self.interactor = interactor
        self.router = router
        super.init(nibName: nil, bundle: nil)
        fatalError("init(coder:) has not been implemented")
    }

    required init? (coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.onViewAppear()
    }
    
    func displayData(movies: [PopularMovieEntity]) {
        print("Imprimimos la data \(movies)")
    }
}
