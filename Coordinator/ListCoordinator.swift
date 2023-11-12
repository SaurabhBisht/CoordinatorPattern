//
//  ListCoordinator.swift
//  CoordinatorPattern
//
//  Created by Saurabh Bisht on 12/11/23.
//

import Foundation
import UIKit


class ListCoordinator: Coordinator {
    var navigationController: UINavigationController
    var parentCoordinator: BaseCoordinator?
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func connectToViewController() {
        let vc = ListViewController.getInstance()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func removeChild(direction: Direction) {
        if direction == .backwards {
            parentCoordinator?.removeCoordinator(child: self)
        }
    }
    
    func navigateToRoot() {
        navigationController.popViewController(animated: false)
        parentCoordinator?.navigateToRoot()
    }
}
