//
//  SignUpViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-22.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var UserId: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var txtCreditCard: UITextField!
    
    @IBOutlet weak var txtShippingInfo: UITextField!
    var customer=Customer()
    var user=UserLogin()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func btnSignup(_ sender: UIButton) {
        
        
        
        if (txtName.text != "" || UserId.text != " " || txtPassword.text != "" || txtAddress.text != " " || txtEmail.text != " " || txtCreditCard.text != " " || txtShippingInfo.text != " " )
        {
            
                let randomNumber = Int.random(in: 0...100)
            let c1=Customer(custid: randomNumber,customerName: txtName.text!,address: txtAddress.text!,creditCardInfo: txtCreditCard.text!,email:txtEmail.text!,shippinginfo:txtShippingInfo.text!)
                
            let u1=UserLogin(sid:UserId.text!,pass:txtName.text!)
                
            customer.register(cid: randomNumber, usid: UserId.text!, cust: c1, user: u1)
            let alert = UIAlertController(title:nil,message:"Registeration Successful",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
            perform(#selector(tologinpage), with: nil, afterDelay: 2)
            
            
        }
        else
        {
            let alert = UIAlertController(title:nil,message:"Invalid Details",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
            self.txtName.text=""
            self.txtPassword.text=""
        }
        
        
    
    
    }
    
    @objc func tologinpage()
    {
        performSegue(withIdentifier: "signIn", sender: self)
    }

}
