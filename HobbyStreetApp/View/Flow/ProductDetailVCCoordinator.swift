//
//  ProductDetailVCCoordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/13.
//

import UIKit

class ProductDetailVCCoordinator: Coordinator, CellDelegate  {
    
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
    
    func pushModalVC() {
        let modalVCCoordinator = ModalVCCoordinator(navigationController: navigationController)
    }
}
