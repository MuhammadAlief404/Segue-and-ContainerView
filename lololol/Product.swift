//
//  Product.swift
//  lololol
//
//  Created by prk on 12/03/19.
//  Copyright © 2019 prk. All rights reserved.
//

import Foundation

class Product{
    
    var name:String
    var price:Int
    var stock:Int
    var image:String
    
    init(name: String, price:Int, stock:Int, image:String)
    {
        self.name = name
        self.price = price
        self.stock = stock
        self.image = image
    }
    
}
