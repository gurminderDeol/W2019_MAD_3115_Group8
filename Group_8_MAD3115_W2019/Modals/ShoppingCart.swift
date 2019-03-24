//
//  ShoppingCart.swift
//  Group_8_MAD3115_W2019
//
//  Created by gurminder on 2019-03-23.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class ShoppingCart
{
    static let sharedcart = ShoppingCart()
    private var cartid:Int?
    var productid:String?
    var dateadded=Date()
    var quantity:Int?
    var subtotal:Float?
    var total:Float?
    var productname:String=""
    var price:Float=0.0
    var tprice:Float?
    var productList = [ShoppingCart]()
    var orderedProduct = Dictionary<Int,[ShoppingCart]>()
    init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()
        self.dateadded=Date()
    }
    
    init(proid:String,pname:String,pprice:Float,qty:Int,pdate:Date)
    {
        self.productid=proid
        self.productname=pname
        self.price=pprice
        self.quantity=qty
        self.dateadded = pdate
    }
    
    
    
    func addcartitem(shop:ShoppingCart)->Bool
    {
        self.productList.append(shop)
            return true
        }
        
    }

