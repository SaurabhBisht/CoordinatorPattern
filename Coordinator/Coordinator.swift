//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Saurabh Bisht on 12/11/23.
//

import Foundation
import UIKit


protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var childCoordinator: [Coordinator] { get set }
    func connectToViewController()
}
