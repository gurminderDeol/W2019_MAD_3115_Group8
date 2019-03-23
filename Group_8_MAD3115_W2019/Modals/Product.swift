//
//  Product.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation

class Product: IDisplay{

    
    
    var productId: String
    var productName: String
    var productPrice: Float
    var image:String
    var productdict = Dictionary<String, Product>()
    static let prod1 = Product()
    
    init() {
        
        self.productId = String()
        self.productName = String()
        self.productPrice = Float()
        self.image  = String()
    }
    
    init(productId: String, productName: String, productPrice: Float, image: String) {
        self.productId = productId
        self.productName = productName
        self.productPrice = productPrice
        self.image = image
    }
    
    
    func addProduct(productId:String, product:Product)
    {
        productdict.updateValue(product, forKey: productId)
    }
    
    func displayData(msg: Bool, no: Int) {
        print(" ")
    }
    
    func displayData() {
        /*print("------------------------------------------------------------------------------")
        print("Product ID:     ||   Product name:       ||   Product price:  ")
        print("------------------------------------------------------------------------------")
        */
        for (_,v) in productdict
        {
            print("\(v.productId)            ||   \(v.productName)         ||           \(v.productPrice)")
            
        }
    
    
    
}
}
