//
//  BaseCoordinator.swift
//  CoordinatorPattern
//
//  Created by Saurabh Bisht on 12/11/23.
//

import Foundation
import UIKit

class BaseCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func connectToViewController() {
        let vc = ViewController.getInstance()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func connectToListViewController(){
        let newChildCoordinator = ListCoordinator(navigationController: navigationController)
        childCoordinator.append(newChildCoordinator)
        newChildCoordinator.parentCoordinator = self
        newChildCoordinator.connectToViewController()
    }
    
    func removeCoordinator(child: Coordinator) {
        for(index, coordinator) in childCoordinator.enumerated() {
            if child === coordinator {
                childCoordinator.remove(at: index)
            }
        }
    }
    
    
    func navigateToRoot() {
        // appdelegate
        
    }
    
}
