//
//  ViewController.swift
//  RecipeDemo
//
//  Created by Chris Ballance on 1/31/16.
//  Copyright © 2016 Ballance IT. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let shoppingList:[String] = ["item1", "item2", "item3", "item4", "item5", "item6"];
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myCellToReturn = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! MyCustomCell
        
        myCellToReturn.myLabel.text = shoppingList[indexPath.row]
        
        return myCellToReturn
    }
}