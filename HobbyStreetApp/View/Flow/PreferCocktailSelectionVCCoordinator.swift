//
//  PreferCocktailSelectionViewCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/08.
//

import UIKit

class PreferCocktailSelectionViewCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = PreferCocktailSelectionViewController()
        vc.modalPresentationStyle = .fullScreen
        //preferCocktailSelectionViewController.delegate = self
        navigationController.present(vc, animated: true)
    }
    
    //func push
    

}

