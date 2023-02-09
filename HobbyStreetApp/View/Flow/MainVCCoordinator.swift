//
//  HomeCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/07.
//

import UIKit

class MainVCCoordinator: Coordinator, MainViewDelegate {
    func pushChooseCocktailVC() {
        let chooseCocktailCoordinator = ChooseCocktailCoordinator(navigationController: navigationController)
        chooseCocktailCoordinator.parentCoordinator .self
        childCoordinators.append(chooseCocktailCoordinator)
        chooseViewCoordinator.start()
    }
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init() {
        self.navigationController = .init()
    }
    
    func start() {
    }
    
    func startPush() -> UINavigationController {
        let mainViewController = MainViewController()
        //mainViewController.delegate = self
        navigationController.setViewControllers([mainViewController], animated: false)
        
        return navigationController
    }
}
