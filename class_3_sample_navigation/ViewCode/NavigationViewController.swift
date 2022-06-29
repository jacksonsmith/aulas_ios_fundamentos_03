//
//  NavigationViewController.swift
//  class_3_sample_navigation
//
//  Created by Jackson on 29/06/22.
//

import Foundation
import UIKit

class NavigationViewController : UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pushViewController(FirstViewController(), animated: true)
    }
}
