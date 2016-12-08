//
//  StartViewController.swift
//  Twitter
//
//  Created by Guilherme Souza on 08/12/16.
//  Copyright © 2016 Guilherme Souza. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func configureUI() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.primaryGreen().cgColor, UIColor.primaryBlue().cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.2)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.8)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height)
        
        view.layer.insertSublayer(gradient, at: 0)
    }


}

