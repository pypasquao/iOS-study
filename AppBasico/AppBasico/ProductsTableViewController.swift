//
//  ProductsTableViewController.swift
//  AppBasico
//
//  Created by Taqtile on 5/3/17.
//  Copyright © 2017 Taqtile. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
//      if(cell.textLabel != nil){
//          cell.textLabel!.text = "Hello friend."
//      }
        cell.textLabel?.text = "Hello friend."
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
    
}
