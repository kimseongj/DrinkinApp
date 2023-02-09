//
//  MainCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/04.
//

import UIKit

class AppCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    let window: UIWindow?
    
    init(_ window: UIWindow?) {
        self.window = window
        window?.makeKeyAndVisible()
    }
    
    func start() {
        let tabbarController = TabbarController()
        self.window?.rootViewController = tabbarController
    }
    
//    func chooseCocktail() {
//        let vc = PreferredCocktailSelectionViewController()
//        vc.coordinator = self
//        navigationController.present(vc, animated: true)
//    }
}
