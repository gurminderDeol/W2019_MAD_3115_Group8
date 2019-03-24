//
//  Customer.swift
//  Group_8_MAD3115_W2019
//
//  Created by gurminder on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class Customer: UserLogin
{
    var custid : Int?
    var customerName : String?
    var address : String?
    var email: String?
    var creditCardInfo : String?
    var c:Bool?
    var shippinginfo : String?
    var customerdetails=Dictionary<String,Customer>()
    
    override init() {
        super.init()
        self.custid=Int()
        self.customerName=String()
        self.address=String()
        self.creditCardInfo=String()
        self.email=String()
        self.c=Bool()
        self.shippinginfo = String()
        
    }
    
    init(custid: Int,customerName: String,address: String,creditCardInfo: String,email:String,shippinginfo: String)
    {
        self.custid = custid
        self.customerName = customerName
        self.address = address
        self.creditCardInfo = creditCardInfo
        self.shippinginfo = shippinginfo
        super.init()
    }
    
    func login(uid:String,pass:String)->Bool
    {
        
        c = super.checklogin(uid: uid,pass: pass)
        return c!
    }
    
    func register(cid:Int,usid:String,cust:Customer,user:UserLogin)
    {
        customerdetails[usid]=cust
        super.users[usid]=user
        
        print(customerdetails)
        print(users)
    }
   
    
    
    
    
}
