//
//  SSecondViewController.swift
//  class_3_sample_navigation
//
//  Created by Jackson on 29/06/22.
//

import Foundation
import UIKit

class SSecondViewController: UIViewController {
    var name: String?
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        label.text = name
    }
}
