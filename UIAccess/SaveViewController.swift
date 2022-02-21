//
//  SaveViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 2/21/22.
//

import UIKit

class SaveViewCotroller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var savedTableView: UITableView!
    
    var fileList = [File]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Saved"
        
        savedTableView.dataSource = self
        savedTableView.delegate = self
        
        initList()
    }
    
    func initList(){
        
        let file01 = File(name: "Heart_Arrhythmias_2020", name2: "OBED", imageName: "pdf-page")
        fileList.append(file01)
        
        let file02 = File(name: "Postpartum Hemorrhage", name2: "APSD", imageName: "pdf-page")
        fileList.append(file02)
        
        let file03 = File(name: "Severe Hypertension in Pregnancy", name2: "OBED", imageName: "pdf-page")
        fileList.append(file03)
        
        let file04 = File(name: "Safe Prevention of the Primary Cesarean Delivery", name2: "APSD", imageName: "pdf-page")
        fileList.append(file04)
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fileList.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as! tableViewCell
        
        let thisFile = fileList[indexPath.row]
        
        tableViewCell.FileOne.text = " " + thisFile.name
        tableViewCell.TitleOne.text = " " + thisFile.name2
        tableViewCell.ImgOne.image = UIImage(named: thisFile.imageName)
        
        return tableViewCell
    }
    
    
 
}

    
    
    
    

