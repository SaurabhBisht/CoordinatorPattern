//
//  ListViewController.swift
//  CoordinatorPattern
//
//  Created by Saurabh Bisht on 12/11/23.
//

import Foundation
import UIKit

enum Direction {
    case forwards
    case backwards
}

class ListViewController: UIViewController, ConnectBoard {
    weak var coordinator: ListCoordinator?
    var direction: Direction? = .backwards
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.removeChild(direction: direction!)
    }
}
