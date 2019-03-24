//
//  CartViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Gurminder on 2019-03-23.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class CartViewController:UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tblview: UITableView!
    let ecart=ShoppingCart.sharedcart
        var cpid:String?
        var cname:String?
        var cprice:Float?
        var qty:Int?
        var addadate:Date?
        var sh=ShoppingCart()
        var item=[ShoppingCart]()
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            item.append(sh)
            self.tblview.delegate=self
            self.tblview.dataSource=self
            getdata()
            // Do any additional setup after loading the view.
        }
        
        
        func getdata() {
            for i in ecart.productList
            {
                item.append(i)
                print(i.productid!)
            }
        }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return item.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cartcell", for: indexPath) as! CartDisplayTableViewCell
            let m = item[indexPath.row]
            cell.lblname.text="ProductName:\(m.productname)"
            cell.lblpid.text="ProductID:\(m.productid!)"
            cell.lblprice.text="price:\(String(m.price))"
            //cell.rqty.text = "Quantity:\(String(Extra.quantity))"
            //cell.rtotal.text="Total:\(String(m.price * Float(Extra.quantity)))"
            return cell
        }
        
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150.0
        }
}
