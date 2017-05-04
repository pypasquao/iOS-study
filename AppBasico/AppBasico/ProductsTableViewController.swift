//
//  ProductsTableViewController.swift
//  AppBasico
//
//  Created by Taqtile on 5/3/17.
//  Copyright © 2017 Taqtile. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["Product 1", "Product 2", "Product 3", "Product 4"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames{
            return pNames.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
//      if(cell.textLabel != nil){
//          cell.textLabel!.text = "Hello friend."
//      }
        
        let productName = productNames?[indexPath.row]
        
        if let pName = productName{
            cell.textLabel?.text = pName
        }
        
        cell.imageView?.image = UIImage(named: "image-cell1")
    
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "ShowProduct"{
            
            let productVC = segue.destination as? ProductViewController

//          Primeira opcao
//            if let cell = sender as? UITableViewCell{
//                let indexPath = tableView.indexPath(for: cell)
//                if let indexPath = indexPath{
//                    let productName = productNames?[indexPath.row]
//                    productVC?.productName = productName
//                }
//            }
            
//          Segunda opcao
//            if let cell = sender as? UITableViewCell{
//                if let indexPath = tableView.indexPath(for: cell){
//                    productVC?.productName = productNames?[indexPath.row]
//                }
//            }
            
            guard let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPath(for: cell) else{
                return
            }
            
            productVC?.productName = productNames?[indexPath.row]
            
            
            
            
        }
        
    }
    
}
