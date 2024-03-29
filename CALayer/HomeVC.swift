//
//  ViewController.swift
//  CALayer
//
//  Created by DA MAC M1 157 on 2023/08/21.
//

import UIKit

class HomeVC: UIViewController {
    
    // how to change the properties of a default layer. This is a layer that comes by default on a view
    let homeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        view.layer.cornerRadius = CGFloat(22.0)
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = CGFloat(5.0)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowRadius  = 5
        view.layer.masksToBounds = true
        view.layer.contents = UIImage(named: "birds")?.cgImage
        view.layer.contentsGravity   = CALayerContentsGravity.center
        view.layer.shadowOffset = CGSize(width: -5, height: 3)
        return view
    }()
    
    //creating a standalone layer
    lazy var newLayer: CALayer = {
        let layer = CALayer()
        //layer.backgroundColor = UIColor.white.cgColor
        layer.cornerRadius = CGFloat(10.0)
        layer.borderWidth = CGFloat(5.0)
        layer.borderColor = UIColor.orange.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: -3, height: 2)
        layer.shadowRadius = CGFloat(15.0)
        layer.contents = UIImage(named: "birds")?.cgImage
        layer.contentsGravity = .center
        return layer
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
       //MARK: -  What is the difference between a frame and a bounds
        newLayer.frame = homeView.bounds
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(homeView)
        homeView.layer.addSublayer(newLayer)
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

