//
//  ViewController2.swift
//  ui-storyboard-and-programmatic
//
//  Created by David Rifkin on 11/27/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 200, y: 200, width: 50, height: 50))
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(navigateToStoryboardVC), for: .touchUpInside)
        return button
    }()

    lazy var button2: UIButton = {
        let button = UIButton(frame: CGRect(x: 200, y: 400, width: 50, height: 50))
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return button
    }()

//    lazy var tableView:UITableView = {
//        let tableView = UITableView(frame: view.bounds)
//        return tableView
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(button)
        view.addSubview(button2)
//        tableView.dataSource = self
//        view.addSubview(tableView)
        // Do any additional setup after loading the view.
    }
    
    @objc func navigateToStoryboardVC() {
        //look for the specific storyboard that has the VC in it
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //in that storyboard, look for the VC that I'm going to create that instance of
        let vc = storyboard.instantiateViewController(identifier: "ViewController") as! ViewController
        //push that VC onto the navigation controller
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func showAlert() {
        //alerts need a controller and actions. they can also have textfields and other stuff 🙀
        let alertController = UIAlertController(title: "This is the Title", message: "This is the message", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            print("OK")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

extension ViewController2: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
