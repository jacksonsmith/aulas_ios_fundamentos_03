//
//  ViewController.swift
//  class_3_sample_navigation
//
//  Created by Jackson on 29/06/22.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var button: UIButton = {
        let view = UIButton()
        view.setTitle("present home", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .darkGray
        
        view.addTarget(self, action: #selector(onButtonClick), for: .touchUpInside)

        return view
    }()
    
    @objc private func onButtonClick() {
    
        let presentViewController = PresentViewController()
        self.present(presentViewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        view.addSubview(button)
        
        button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: 0).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
}

