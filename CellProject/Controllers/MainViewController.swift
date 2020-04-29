//
//  ViewController.swift
//  CellProject
//
//  Created by Anthony Howe on 2/13/20.
//  Copyright © 2020 Anthony Howe. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title="Root View"
    }
  
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        do {
                 try Auth.auth().signOut()
                 navigationController?.popToRootViewController(animated: true)
                 
             } catch let signOutError as NSError {
               print ("Error signing out: %@", signOutError)
             }
        
    }
    
    @IBAction func buyNowPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToVerizon", sender: self)
    }
    
    @IBAction func attButtonPressed(_ sender: UIButton) {
        
         self.performSegue(withIdentifier: "goToATT", sender: self)    }
}

