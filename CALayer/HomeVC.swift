//
//  ViewController.swift
//  CALayer
//
//  Created by DA MAC M1 157 on 2023/08/21.
//

import UIKit

class HomeVC: UIViewController {
    
    let homeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(homeView)
        configureConstraints()
    }
    
    
    func configureConstraints() {
        
        let composeHomeView = [
            homeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            homeView.widthAnchor.constraint(equalToConstant: 300),
            homeView.heightAnchor.constraint(equalToConstant: 300)
        ]
        
        
        NSLayoutConstraint.activate(composeHomeView)
    }


}

