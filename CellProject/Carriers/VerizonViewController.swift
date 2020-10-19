//
//  VerizonViewController.swift
//  CellProject
//
//  Created by Anthony Howe on 10/10/20.
//  Copyright © 2020 Anthony Howe. All rights reserved.
//

import UIKit
import SwiftUI

class VerizonViewController: UIViewController {
    
     private var percentSave: Double = 0.0
    

    
      override func viewDidLoad() {
          
          
          super.viewDidLoad()
          
          
      }
    
    @IBOutlet weak var chooseAmountTextField: UITextField!
    
    @IBOutlet weak var newCostTextField: UITextField!
    
    
    @IBAction func enterButtonPressed(_ sender: Any) {
        
        computeCostSavings()
    }
    
    
    @IBAction func buyNowButtonPressed(_ sender: UIButton) {
        
        if let url = URL(string: "https://discountedcellularprepaidrefills.com") {
            UIApplication.shared.open(url)
        }
    }
    func computeCostSavings(){
        
        percentSave = 0.076
        let cost = Double(chooseAmountTextField.text!) ?? 0
        
        let savings = cost * percentSave
        let total = cost - savings
        
        
        
        newCostTextField.text = String(format: "$%.2f", total)
        
        
    }
    
}
