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

    @IBOutlet weak var verizonImage: UIImageView!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

       
    }
   

    @IBOutlet weak var newCostLabel: UILabel!
    
    
    @IBOutlet weak var chooseAmountLabel: UILabel!
  
    @IBAction func buyNowPressed(_ sender: UIButton) {
        
        computeCostSavings()
        
        if let url = URL(string: "https://discountedcellularprepaidrefills.com") {
            UIApplication.shared.open(url)
        }
        
    }
    
    func computeCostSavings(){
       // let newCost = Double(enterCostTextField.text!)
      //  let tipPercentages = [0.18, 0.2, 0.25]
            
      //  chooseCarrier()
         let cost = Double(chooseAmountLabel.text!) ?? 0
                // let percentSave = Double(chooseCarrierLabel.text!) ?? 0
                let savings = cost * percentSave //[tipControl.selectedSegmentIndex]
                let total = cost - savings
      
      
        chooseAmountLabel.text =   String(format: "%.0f", percentSave * 100.0)
        newCostLabel.text = String(format: "$%.2f", total)
        
        
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
