//
//  ViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 11/22/21.
//

import UIKit

class HomeViewController: UIViewController {
 
    // @IBOutlet var textField: UITextField!
    
    // @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
    //    textField.resignFirstResponder()
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

import UIKit

class UpdatesViewController: UITableViewController {
    
    var itemStore: ItemStore!
    
    @IBAction func addNewItem(_ sender: UIButton) {
        // Create a new item and add it to the store
        let newItem = itemStore.createItem()

        // Figure out where that item is in the array
        // (Note: You will have an error on the next line; you will fix it soon)
        if let index = itemStore.allItems.firstIndex(of: newItem) {
            let indexPath = IndexPath(row: index, section: 0)

            // Insert this new row into the table
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return itemStore.allItems.count}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        // Create an instance of UITableViewCell with default appearance
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "UITableViewCell")
        // Set the text on the cell with the description of the item
        // that is at the nth index of items, where n = row this cell
        // will appear in on the table view
        let item = itemStore.allItems[indexPath.row]
        
        let image = UIImage(systemName: "chevron.right")
        
       let accessory  = UIImageView(frame:CGRect(x:0, y:0, width:(image?.size.width)!, height:(image?.size.height)!))
        accessory.image = image
        accessory.tintColor = UIColor(red: 183/255, green: 217/255, blue: 140/255, alpha: 1.0)
        cell.accessoryView = accessory
        
        // cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = item.name
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        cell.textLabel?.numberOfLines = 2;
        cell.detailTextLabel?.text = "\(item.classification) • \(item.dateUpdated)"
        cell.detailTextLabel?.textColor = UIColor.darkGray
        
    return cell
        
    }
    
    

    /* override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a new or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell",
            for: indexPath)
        
        // Set the text on the cell with the description of the item
        // that is at the nth index of items, where n = row this cell
        // will appear in on the table view
        let item = itemStore.allItems[indexPath.row]

        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.classification

        return cell
    } */
    
    override func tableView(_ tableView: UITableView,
                            commit editingStyle: UITableViewCell.EditingStyle,
                            forRowAt indexPath: IndexPath) {
        // If the table view is asking to commit a delete command...
        if editingStyle == .delete {
            let item = itemStore.allItems[indexPath.row]
            // Remove the item from the store
            itemStore.removeItem(item)

            // Also remove that row from the table view with an animation
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView,
                            moveRowAt sourceIndexPath: IndexPath,
                            to destinationIndexPath: IndexPath) {
        // Update the model
        itemStore.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
        // Do any additional setup after loading the view.
    
 
}

import UIKit

class SearchViewController: UISearchController {
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
}

// test Josh
