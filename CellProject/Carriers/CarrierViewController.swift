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
    
    private var chooseAmountTextField: Double = 0.0
    
    private let dataSource = ["10", "25"]
  
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
    }
    
 
    
    
    @IBOutlet weak var newCostTextField: UITextField!
    

    
    
    
    @IBAction func buyNowPressed(_ sender: UIButton) {
     
            
            
            if let url = URL(string: "https://discountedcellularprepaidrefills.com") {
                UIApplication.shared.open(url)
            }
        
        }
        
        
        
        
        
    

    func computeCostSavings(){
        
        percentSave = 0.08
        let cost = chooseAmountTextField
        
        let savings = cost * percentSave
        let total = cost - savings
        
        
        
        newCostTextField.text = String(format: "$%.2f", total)
        
        
    }
    

    func dismissKeyboard(){
          
          self.view.endEditing(false)
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


extension CarrierViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        newCostTextField.text = dataSource[row]
        if row == 0 { return
            // first selection, initialize the VC related with it
        }
            
            
        else if row == 1 {
            return
            // second selection, initialize the VC related with it
        }
    
       else if row == 2 {
            return
            // second selection, initialize the VC related with it
        } else {
            // other selections, you get the idea, you can also do switch-case
        }
    }



    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
}

