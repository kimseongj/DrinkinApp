//
//  HomeBarVCCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/07.
//

import UIKit

class HomeBarVCCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init() {
        self.navigationController = .init()
    }
    
    func start() {
    }
    
    func startPush() -> UINavigationController {
        let homeBarViewController = HomeBarViewController()
        //homeBarViewController.delegate = self
        navigationController.setViewControllers([homeBarViewController], animated: false)
        
        return navigationController
    }
}
