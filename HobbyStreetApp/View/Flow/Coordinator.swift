//
//  Coordinator.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/04.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }

    func start()
}
