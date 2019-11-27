//
//  ViewController.swift
//  ui-storyboard-and-programmatic
//
//  Created by David Rifkin on 11/27/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func navigateToNextPressed(_ sender: UIButton) {
        self.navigationController?.pushViewController({let vc = UIViewController()
            vc.view.backgroundColor = .blue
            return vc
        }(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

