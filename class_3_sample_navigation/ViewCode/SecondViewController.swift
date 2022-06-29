//
//  SecondNavigationViewController.swift
//  class_3_sample_navigation
//
//  Created by Jackson on 29/06/22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let view = UIButton()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .systemBackground
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Go to Story Board", for: .normal)
        
        view.addTarget(self, action: #selector(onButtonClick), for: .touchUpInside)
        
        return view
    }()
    
    @objc private func onButtonClick(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "NavigateWithStoryBoard", bundle: nil)
        let firstStoryBoardViewController = storyBoard.instantiateViewController(withIdentifier: "SFirstViewController")
                self.present(firstStoryBoardViewController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        self.title = "Second View Controller"
        self.view.backgroundColor = .yellow
        
        view.addSubview(button)
        button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: 0).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
}
