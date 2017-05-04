//
//  ProductViewController.swift
//  AppBasico
//
//  Created by Taqtile on 5/3/17.
//  Copyright © 2017 Taqtile. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product{
            productNameLabel.text = p.name
            if let i = p.productImage{
                productImageView.image = UIImage(named: i)
            }
        }
       
        
        
    }
    @IBAction func addToCartPressed(_ sender: AnyObject) -> Void{
        print("Button tapped")
    }

}
