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
    
    var productName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = productName
        productImageView.image = UIImage(named: "phone-fullscreen3")
        
        
    }
    @IBAction func addToCartPressed(_ sender: AnyObject) -> Void{
        print("Button tapped")
    }

}
