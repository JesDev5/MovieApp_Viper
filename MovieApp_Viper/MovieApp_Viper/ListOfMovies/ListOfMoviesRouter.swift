//
//  listOfMoviesRouter.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/10/24.
//

import Foundation
import UIKit

protocol ListOfMoviesRoutingLogic: AnyObject {
    
}

class ListOfMoviesRouter: ListOfMoviesRoutingLogic {

    weak var viewController:UIViewController?
    
    func createModule(window: UIWindow?) {
       
        let router = ListOfMoviesRouter()
        let presenter = ListOfMoviesPresenter()
        let interactor = ListOfMoviesInteractor(presenter: presenter)
        let viewController = ListOfMoviesViewController(interactor: interactor, router: router)
        
        presenter.viewController = viewController
        router.viewController = viewController
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
      
    }
}

