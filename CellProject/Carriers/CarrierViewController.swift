//
//  VerizonViewController.swift
//  CellProject
//
//  Created by Anthony Howe on 2/14/20.
//  Copyright © 2020 Anthony Howe. All rights reserved.
//

import UIKit
import SwiftUI

class CarrierViewController: UIViewController {
    
    
    private var percentSave: Double = 0.0
    
   
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
    }
    
    
    
    
    @IBOutlet weak var newCostTextField: UITextField!
    
    @IBOutlet weak var chooseAmountTextField: UITextField!
    
    
    
    @IBAction func buyNowPressed(_ sender: UIButton) {
        
        
        
        if let url = URL(string: "https://discountedcellularprepaidrefills.com") {
            UIApplication.shared.open(url)
        }
        
    }
    
    @IBAction func enterPressed(_ sender: Any) {
        computeCostSavings()
    }
    func computeCostSavings(){
        
        percentSave = 0.08
        let cost = Double(chooseAmountTextField.text!) ?? 0
        
        let savings = cost * percentSave
        let total = cost - savings
        
        
        
        newCostTextField.text = String(format: "$%.2f", total)
        
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}


