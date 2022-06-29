//
//  FirstNavigationViewController.swift
//  class_3_sample_navigation
//
//  Created by Jackson on 29/06/22.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let view = UIButton()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .systemBackground
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Go to Second", for: .normal)
        
        view.addTarget(self, action: #selector(onButtonClick), for: .touchUpInside)
        
        return view
    }()
    
    @objc private func onButtonClick() {
        let secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func viewDidLoad() {
        self.modalPresentationStyle = .fullScreen
        self.title = "First View Controller"
        self.view.backgroundColor = .red
        
        view.addSubview(button)
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
    }
}
