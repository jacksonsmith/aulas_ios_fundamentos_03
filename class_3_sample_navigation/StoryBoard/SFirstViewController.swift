//
//  SFirstViewController.swift
//  class_3_sample_navigation
//
//  Created by Jackson on 29/06/22.
//

import Foundation
import UIKit
class SFirstViewController: UIViewController {
    @IBOutlet var button: UIButton!
    @IBOutlet var input: UITextField!
    
    
    @IBAction func onButtonClick() {
        let sSecondViewController = SecondViewController()
        sSecondViewController.modalPresentationStyle = .fullScreen
                
        performSegue(withIdentifier: "segue_navigation_identifier", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? SSecondViewController
        destinationVC?.name = input?.text

    }
}
