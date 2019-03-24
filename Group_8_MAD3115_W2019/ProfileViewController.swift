//
//  ContactUsViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-22.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var profileName:String?
    var profilePassword:String?

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.text=profileName
        txtPassword.text=profilePassword
        

        // Do any additional setup after loading the view.
    }
    
   
    

    
}
