//
//  CartDisplayTableViewCell.swift
//  Group_8_MAD3115_W2019
//
//  Created by Kiran Mehal on 2019-03-23.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class CartDisplayTableViewCell: UITableViewCell {

    @IBOutlet weak var lblprice: UILabel!
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblpid: UILabel!
    
    @IBOutlet weak var lblQuantity: UILabel!
    
    @IBOutlet weak var lblSubTotal: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
