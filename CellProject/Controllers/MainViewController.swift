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

   var leftBarButtonItem : UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // navigationItem.title="Root View"
        self.leftBarButtonItem = UIBarButtonItem(title: "test", style:         UIBarButtonItem.Style.plain, target: nil, action: nil)
    }

    
    @IBAction func buyNowPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToVerizon", sender: self)
    }
    
    @IBAction func attButtonPressed(_ sender: UIButton) {
        
         self.performSegue(withIdentifier: "goToATT", sender: self)
        
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        print("Log Out Pressed")
        do{
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        }catch let signOutError as NSError{
            print("Error signing out: %@", signOutError)
        }
        
    }
}

