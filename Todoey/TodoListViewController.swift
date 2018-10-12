//
//  ViewController.swift
//  Todoey
//
//  Created by Aleksandar Milincic on 10/9/18.
//  Copyright © 2018 Aleksandar Milincic. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["find a book", "explore the see", "go to the shop"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK - Table View Data Source methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath as IndexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        print (cell)
        return cell
    }
    
    //MARK - Table View Delegate Methods
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //print(indexPath.row)
        
        if ( tableView.cellForRow(at: indexPath as IndexPath)?.accessoryType == .checkmark) {
            tableView.cellForRow(at: indexPath as IndexPath)?.accessoryType == .none
        }
        else {
            tableView.cellForRow(at: indexPath as IndexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
    }
    
    
}

