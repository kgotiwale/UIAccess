//
//  OBEDViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 3/12/22.
//

import UIKit

class FileCell: UITableViewCell {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var date: UILabel!
    @IBOutlet var icon: UIImageView!
    
}

class OBEDViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    let names = ["Cervical Ripening for Induction of Labor", "Severe Hypertension in Pregnancy Management"]
    let date = ["April 2021", "October 2021"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    



   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me *wink*")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "File", for: indexPath) as! FileCell
       
        cell1.name?.text = "Cervical Ripening for Induction of Labor"
        cell1.date?.text = "April 2021"
        cell1.icon?.image = UIImage(named: "pdficon")
        
        return cell1
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        if indexPath.row == 1 {
              return 90
           }
        
        return UITableView.automaticDimension
        
    }
    
   
    
    


}
