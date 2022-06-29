//
//  MainViewController.swift
//  class_3_sample_navigation
//
//  Created by Jackson on 29/06/22.
//

import Foundation
import UIKit

class PresentViewController: UIViewController {
    lazy var button: UIButton = {
        let view = UIButton()
        view.setTitle("present navigation", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .darkGray
        
        view.addTarget(self, action: #selector(onButtonClick), for: .touchUpInside)

        return view
    }()
    
    @objc private func onButtonClick() {
        let navigationViewController = NavigationViewController()
        navigationViewController.modalPresentationStyle = .fullScreen
        
        self.present(navigationViewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(button)
        
        button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: 0).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }

}
