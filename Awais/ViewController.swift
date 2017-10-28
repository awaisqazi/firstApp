//
//  ViewController.swift
//  Awais
//
//  Created by Antonio Mistretta on 10/27/17.
//  Copyright © 2017 Antonio Mistretta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:0, y:0.1)
        gradient.colors = [
            UIColor.init(red: 184/255, green: 219/255, blue: 37/255, alpha: 1).cgColor,
            UIColor.init(red: 43/255, green: 136/255, blue: 68/255, alpha: 0.6).cgColor
        ]
        return gradient
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Swipe!"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 110)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

}

