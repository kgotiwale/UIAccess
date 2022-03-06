//
//  ViewController.swift
//  UIAccess_Saved
//
//  Created by Vanessa Camacho on 2/20/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var savedTableView: UITableView!
    
    var fileList = [File]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        savedTableView.dataSource = self
        savedTableView.delegate = self
        
        initList()
    }
    
    func initList(){
        
        let file01 = File(name: "Heart_Arrhythmias_2020", name2: "OBED", name3: "October 19, 2021", imageName: "pdf-page", imageName2: "threedots")
        fileList.append(file01)
        
        let file02 = File(name: "Postpartum Hemorrhage", name2: "APSD", name3: "October 19, 2021", imageName: "pdf-page", imageName2: "threedots" )
        fileList.append(file02)
        
        let file03 = File(name: "Severe Hypertension in PregnancyL Management", name2: "L&D", name3: "October 10, 2021", imageName: "pdf-page", imageName2: "threedots")
        fileList.append(file03)
        
        let file04 = File(name: "Safe Prevention of the Primary Cesarean Delivery", name2: "Postpartum", name3: "October 10, 2021", imageName: "pdf-page", imageName2: "threedots")
        fileList.append(file04)
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fileList.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as! tableViewCell
        
        let thisFile = fileList[indexPath.row]
        
        tableViewCell.TitleOne.text = " " + thisFile.name
        tableViewCell.CategoryOne.text = " " + thisFile.name2
        tableViewCell.DateOne.text = " " + thisFile.name3
        tableViewCell.ImgOne.image = UIImage(named: thisFile.imageName)
        tableViewCell.ImgTwo.image = UIImage(named: thisFile.imageName2)
        
        return tableViewCell
    }
    
 
}

