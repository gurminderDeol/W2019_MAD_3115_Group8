//
//  ProductsTableViewCell.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblProductId: UILabel!
    
    @IBOutlet weak var lblProductName: UILabel!
    
    @IBOutlet weak var lblProductPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
