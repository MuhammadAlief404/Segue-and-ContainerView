//
//  ContainerViewController.swift
//  lololol
//
//  Created by prk on 12/03/19.
//  Copyright © 2019 prk. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblHarga: UILabel!
    @IBOutlet weak var lblStock: UILabel!
    
    var product:Product?
    
    var product1:Product = Product(name: "Makanan Berat", price: 15000, stock: 20, image: "steak")
    var product2:Product = Product(name: "Snack", price: 7000, stock: 15, image: "cupcake")
    var product3:Product = Product(name: "Buah", price: 5000, stock: 20, image: "apple")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblStock.text = "\(product!.stock)"
        lblName.text = "\(product!.name)"
        lblHarga.text = "\(product!.price)"
        image.image = UIImage(named: (product?.image)!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueBuy")
        {
            let destination = segue.destination as? BuyViewController
            destination?.product = product
        }
    }
}
