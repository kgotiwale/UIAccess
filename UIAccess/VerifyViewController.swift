//
//  VerifyViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 2/20/22.
//

import UIKit

class VerifyViewController: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
            if Core.shared.isNewUser() {
                // show Onboarding
                let vc = storyboard?.instantiateViewController(identifier: "welcome") as! WelcomeViewController
                vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true)
            
        }
            
    }
    
}
    
    class Core {
        
        static let shared = Core()
        
        func isNewUser() -> Bool {
            return !UserDefaults.standard.bool(forKey: "isNewUser")
            
        }
        
        ///
        func setIsNotNewUser() {
            UserDefaults.standard.set(true, forKey: "isNewUser")
            
        }
        
    }
    
    

