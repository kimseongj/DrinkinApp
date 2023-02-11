//
//  HomeCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/07.
//

import UIKit

class MainVCCoordinator: Coordinator, MainViewDelegate{
    weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init() {
        self.navigationController = .init()
    }
    
    func start() {
    }
    
    func startPush() -> UINavigationController {
        let mainViewController = MainViewController()
        mainViewController.delegate = self
        navigationController.setViewControllers([mainViewController], animated: false)
        return navigationController
    }
    
    func pushChooseCocktailVC() {
        let preferCocktailSelectionViewCoordinator = PreferCocktailSelectionViewCoordinator(navigationController: navigationController)
        
        preferCocktailSelectionViewCoordinator.parentCoordinator = self
        childCoordinators.append(preferCocktailSelectionViewCoordinator)
        
        preferCocktailSelectionViewCoordinator.start()
    }
}
