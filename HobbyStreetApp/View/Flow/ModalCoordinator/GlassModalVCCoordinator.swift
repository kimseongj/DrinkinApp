//
//  GlassModalVCCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/03/02.
//

import UIKit

class GlassModalVCCoordinator {
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
}
