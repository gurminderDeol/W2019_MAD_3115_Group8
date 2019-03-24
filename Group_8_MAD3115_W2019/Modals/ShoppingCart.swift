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
    
    init(PrductId:String,PName:String,Price:Float,Quantity:Int,Date:Date)
    {
        self.productid=PrductId
        self.productname=PName
        self.price=Price
        self.quantity=Quantity
        self.dateadded = Date
    }

    func addcartitem(shopping:ShoppingCart)->Bool
    {
        self.productList.append(shopping)
            return true
        }
        
    }

