//
//  ProductsTableViewController.swift
//  AppBasico
//
//  Created by Taqtile on 5/3/17.
//  Copyright © 2017 Taqtile. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "Product 1"
        product1.productImage = "phone-fullscreen1"
        product1.cellImage = "image-cell1"
        
        product2.name = "Product 2"
        product2.productImage = "phone-fullscreen2"
        product2.cellImage = "image-cell2"
    
        product3.name = "Product 3"
        product3.productImage = "phone-fullscreen3"
        product3.cellImage = "image-cell3"
        
        product4.name = "Product 4"
        product4.productImage = "phone-fullscreen4"
        product4.cellImage = "image-cell4"
        
        products = [product1, product2, product3, product4]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let p = products{
            return p.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
//      if(cell.textLabel != nil){
//          cell.textLabel!.text = "Hello friend."
//      }
        
        let product = products?[indexPath.row]
        
        if let p = product{
            cell.textLabel?.text = p.name
            if let i = p.cellImage{
                cell.imageView?.image = UIImage(named: i)
            }
        }
        
       
    
        
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
            
            productVC?.product = products?[indexPath.row]
            
            
            
            
        }
        
    }
    
}
