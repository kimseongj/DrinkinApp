//
//  ProductDetailVCCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/13.
//

import UIKit

class ProductDetailVCCoordinator: Coordinator, ProductDetailViewDelegate {
    
    
    
    weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ProductDetailViewController()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func pushToolModalVC() {
        let toolModalVCCoordinator = ToolModalVCCoordinator(navigationController: navigationController)
        toolModalVCCoordinator.parentCoordinator = self
        childCoordinators.append(toolModalVCCoordinator)
        toolModalVCCoordinator.start()
    }
    
    func pushBuildModalVC() {
        let modalVCCoordinator = ModalVCCoordinator(navigationController: navigationController)
        modalVCCoordinator.parentCoordinator = self
        childCoordinators.append(modalVCCoordinator)
        modalVCCoordinator.startToolModal()
    }
    
    func pushGlassModalVC() {
        let modalVCCoordinator = ModalVCCoordinator(navigationController: navigationController)
        modalVCCoordinator.parentCoordinator = self
        childCoordinators.append(modalVCCoordinator)
        modalVCCoordinator.startToolModal()
    }
}
