//
//  SettingsViewController.swift
//  igclone
//
//  Created by Berkay Emre Aslan on 2.01.2024.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "ToViewController", sender: nil)
        }catch{
            print("error")
        }
    }
}
