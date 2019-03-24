//
//  ProductCollectionViewCell.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-22.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblProductId: UILabel!
    
    @IBOutlet weak var lblProductName: UILabel!
    
    @IBOutlet weak var lblProductDetails: UILabel!
    
    @IBOutlet weak var lblquantity: UITextField!
    @IBOutlet weak var productImage: UIImageView!

    var delegate: OnSelection?
    var index: Int?
    
    @IBAction func stepQuantity(_ sender: UIStepper) {
        lblquantity.text=String(Int(sender.value))
        //Extra.quantity=Int(sender.value)
        
        
        
    }
    
    
    @IBAction func btnAdd(_ sender: UIButton) {
        if(lblquantity.text=="")
        {
            
        }
        else
        {
            if let  i = index{
                if let d = delegate
                {
                    d.passProduct(index: i)
                }
            }
        }
        
    }
        
    }
    
    
    
    protocol OnSelection:class {
        func passProduct(index: Int)
    }

