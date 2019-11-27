//
//  LogOutViewController.swift
//  FB-login
//
//  Created by Tuğkan Boz on 25.11.2019.
//  Copyright © 2019 Tuğkan Boz. All rights reserved.
//

import UIKit
import FirebaseAuth


class LogOutViewController: UIViewController {
    @IBOutlet weak var logOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutTapped(_ sender: Any) {
        //try! Auth.auth().signOut()
        
        do {
            try Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
            let ViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.StoryBoard.ViewController) as? ViewController
            
            self.view.window?.rootViewController = ViewController
            self.view.window?.makeKeyAndVisible()
        } catch let err {
            print(err)
        }
        
        
        
        

    }
    

}
