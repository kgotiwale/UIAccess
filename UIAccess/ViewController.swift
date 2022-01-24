//
//  ViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 11/22/21.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet var textField: UITextField!
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        textField.resignFirstResponder()
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

