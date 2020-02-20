//
//  WelcomeViewController.swift
//  CellProject
//
//  Created by Anthony Howe on 2/18/20.
//  Copyright © 2020 Anthony Howe. All rights reserved.
//

import UIKit


class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

   

}
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "registerView", sender: self)
    }
    @IBAction func logInPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "logInView", sender: self)
    }
}
