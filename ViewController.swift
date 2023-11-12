//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Saurabh Bisht on 12/11/23.
//

import UIKit

class ViewController: UIViewController, ConnectBoard {
    weak var coordinator: BaseCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showListViewTapped(_ sender: Any) {
        coordinator?.connectToListViewController()
    }
    @IBAction func showDetailsViewTapped(_ sender: Any) {
    }
}

