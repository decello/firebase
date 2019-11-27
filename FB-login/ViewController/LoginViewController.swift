//
//  LoginViewController.swift
//  FB-login
//
//  Created by Tuğkan Boz on 17.11.2019.
//  Copyright © 2019 Tuğkan Boz. All rights reserved.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        
        //hide the error label
        errorLabel.alpha = 0
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginTapped(_ sender: Any) {
    
            //Validate Text Fields
        
        
            //Create cleaned version of the text fields
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
            //Sign In The User
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }
            else{
                let LogOutViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.StoryBoard.LogOutViewController) as? LogOutViewController
                
                self.view.window?.rootViewController = LogOutViewController
                self.view.window?.makeKeyAndVisible()
            }
            
        }

            
        }
        
        
        
        
    
    

}
