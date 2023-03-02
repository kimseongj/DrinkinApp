//
//  ModalVCCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/13.
//

import UIKit

class ToolModalVCCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ToolModalViewController()
        navigationController.present(vc, animated: true)
    }
    
    
    
    func startGlassModal() {
        let vc = ToolModalViewController()
        navigationController.present(vc, animated: true)
    }
    
}
