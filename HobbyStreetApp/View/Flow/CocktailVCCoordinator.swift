//
//  CocktailVCCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/07.
//

import UIKit

class CocktailVCCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init() {
        self.navigationController = .init()
    }
    
    func start() {
    }
    
    func startPush() -> UINavigationController {
        let cocktailViewController = CocktailViewController()
        //cocktailViewController.delegate = self
        navigationController.setViewControllers([cocktailViewController], animated: false)
        
        return navigationController
    }
}
