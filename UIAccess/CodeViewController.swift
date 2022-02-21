//
//  CodeViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 2/20/22.
//

import UIKit

class CodeViewController: UIViewController {
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBOutlet var field: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
}
