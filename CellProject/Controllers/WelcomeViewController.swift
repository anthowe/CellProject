//
//  WelcomeViewController.swift
//  CellProject
//
//  Created by Anthony Howe on 2/18/20.
//  Copyright © 2020 Anthony Howe. All rights reserved.
//

import UIKit
import Firebase

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let db = Firestore.firestore()
    
    var data: [DataToStore] = [DataToStore(email: "")]
    
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
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        passwordTextField.isSecureTextEntry = true
        
    }
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
   
    @IBAction func registerButtonPressed(_ sender: UIButton) {
            self.passwordTextField.isSecureTextEntry = true
            if let email = emailTextField.text, let password = passwordTextField.text {
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        if let e = error {
                           print(e)
                        } else {
                            //Navigate to the ChatViewController
                            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: self)
                        }
                    }
                //MARK - Adding db functionality
                if let emailText = Auth.auth().currentUser?.email{
                    db.collection(K.FStore.email).addDocument(data: [K.FStore.email: emailText]) { (error) in
                        if let e = error {
                            print("There was an issue saving data to Firestore: \(e)")
                        }else{
                            print("Successfully saved data")
                        }
                    }
                }
                //!emailText.isEmpty else {return}
                //guard let passwordText = passwordTextField.text, !passwordText.isEmpty else {return}
                //let dataToSave: [String: Any] = ["email": emailText]
                //db.collection(K.FStore.email)
           
            }
    }
    @IBAction func logInPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text
        {Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if let e = error{
                print(e)
            }else{
                self.performSegue(withIdentifier: "alreadyLoggedIn", sender: self)
            }

            }


        }
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
        }
    }
}
