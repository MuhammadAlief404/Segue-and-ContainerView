//
//  ViewController.swift
//  lololol
//
//  Created by prk on 12/03/19.
//  Copyright © 2019 prk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var product:Product?
    
    var product1:Product = Product(name: "Makanan Berat", price: 15000, stock: 20, image: "steak")
    var product2:Product = Product(name: "Snack", price: 7000, stock: 15, image: "cupcake")
    var product3:Product = Product(name: "Buah", price: 5000, stock: 20, image: "apple")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? ContainerViewController
        
        if segue.identifier == "atas"
        {
            destination?.product = product1
        }
        else if segue.identifier == "tengah"
        {
            destination?.product = product2
        }
        else if segue.identifier == "bawah"
        {
            destination?.product = product3
        }
    }


}

