//
//  OnBoard1ViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 2/20/22.
//

import UIKit
import SwiftyOnboard

class OnBoard1ViewController: UIViewController {
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let swiftyOnboard = SwiftyOnboard(frame: view.frame)
                    view.addSubview(swiftyOnboard)
                    swiftyOnboard.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
}
