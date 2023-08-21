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
        view.layer.cornerRadius = CGFloat(22.0)
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = CGFloat(5.0)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowRadius  = 5
        view.layer.shadowOffset = CGSize(width: -5, height: 3)
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

