//
//  LoginViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 2/20/22.
//

import UIKit

class LoginViewController: UIViewController {
 
    // @IBOutlet var textField: UITextField!
    
    // @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
    //   textField.resignFirstResponder()
    // }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    //func searchBarButtonClicked(_ searchBar: UISearchBar)
   // {
     //   searchBar.resignFirstResponder()
    //}


    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    


}
