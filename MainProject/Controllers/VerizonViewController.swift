//
//  VerizonViewController.swift
//  CellProject
//
//  Created by Anthony Howe on 2/14/20.
//  Copyright © 2020 Anthony Howe. All rights reserved.
//

import UIKit

class VerizonViewController: UIViewController {

    @IBOutlet weak var verizonImage: UIImageView!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

       
    }
   
    
    @IBAction func buyNowPressed(_ sender: UIButton) {
        
        if let url = URL(string: "https://www.mcssl.com/SecureCart/ViewCart.aspx?mid=209392A5-30C3-4728-8AAB-EA3905A0F1D6&sctoken=77a64cff55af4193bbeda0f11da9974a&bhjs=1&bhqs=1") {
            UIApplication.shared.open(url)
        }
        
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
