//
//  CostSavingsViewController.swift
//  CellProject
//
//  Created by Anthony Howe on 10/5/20.
//  Copyright © 2020 Anthony Howe. All rights reserved.
//

import UIKit
import Firebase



class CostSavingsViewController: UIViewController{
    
    private let dataSource = ["AT&T", "Verizon", "Tracfone", "Lyca", "TMobile", "Boost"]
    private var percentSave: Double = 0.0
    
    private let total = ""
    

//    private var percentSaved = 0.0

    @IBOutlet weak var enterCostTextField: UITextField!
    
    @IBOutlet weak var chooseCarrierLabel: UILabel!
    
    @IBOutlet weak var newCostLabel: UILabel!
    
    @IBOutlet weak var pickCarrier: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // navigationItem.title="Root View"
       // self.leftBarButtonItem = UIBarButtonItem(title: "test", style:         UIBarButtonItem.Style.plain, target: nil, action: nil)
        pickCarrier.delegate = self
        pickCarrier.dataSource = self
        
    }
  
    @IBAction func enterButtonPressed(_ sender: Any) {
        
        computeCostSavings()
    }
    
    
    func computeCostSavings(){
       // let newCost = Double(enterCostTextField.text!)
      //  let tipPercentages = [0.18, 0.2, 0.25]
            
        chooseCarrier()
         let cost = Double(enterCostTextField.text!) ?? 0
                // let percentSave = Double(chooseCarrierLabel.text!) ?? 0
                let savings = cost * percentSave //[tipControl.selectedSegmentIndex]
                let total = cost - savings
      
      
        chooseCarrierLabel.text =   String(format: "%.0f", percentSave * 100.0)
        newCostLabel.text = String(format: "$%.2f", total)
        
        
    }
    
    func chooseCarrier (){
        
       
        if (chooseCarrierLabel.text == "AT&T"){
            percentSave = 0.15
            let vcOne = storyboard?.instantiateViewController(withIdentifier: "aTTViewController") as! CarrierViewController
            present( vcOne, animated:true , completion: nil)
         
        }
        else if(chooseCarrierLabel.text == "Verizon"){
            percentSave = 0.09
            
        }
        else if(chooseCarrierLabel.text == "Tracfone"){
            percentSave = 0.10
        }
        else if(chooseCarrierLabel.text == "Lyca"){
            percentSave = 0.12
        }
        else if(chooseCarrierLabel.text == "TMobile"){
            percentSave = 0.13
        }
        else if(chooseCarrierLabel.text == "Boost"){
            percentSave = 0.08
        }
        else{percentSave = 0.0
            
        }
        
        
    }
    
    
    
    
    
    
}
extension CostSavingsViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chooseCarrierLabel.text = dataSource[row]
//        if row == 0 {  //percentSave = 0.15
//                  }
//
////            let vcOne = storyboard?.instantiateViewController(withIdentifier: "carrierViewController") as! CarrierViewController
//            //present( <#UIViewController#>, animated: true, completion: nil)
//            // first selection, initialize the VC related with it
//        else if row == 1 {
////            let vcTwo = storyboard?.instantiateViewController(withIdentifier: "carrierViewController") as! CarrierViewController
////            present(vcTwo, animated: true, completion: nil)
//            // second selection, initialize the VC related with it
//        } else {
//            // other selections, you get the idea, you can also do switch-case
//        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
  }
