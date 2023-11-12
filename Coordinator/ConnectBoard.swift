//
//  ConnectBoard.swift
//  CoordinatorPattern
//
//  Created by Saurabh Bisht on 12/11/23.
//

import Foundation
import UIKit


protocol ConnectBoard {
    static func getInstance()->Self
}

extension ConnectBoard where Self: UIViewController {
    static func getInstance()->Self {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyBoard.instantiateViewController(withIdentifier: String(describing: self)) as! Self
    }
}
