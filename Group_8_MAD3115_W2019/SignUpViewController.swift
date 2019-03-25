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
        
        
        
      
        if(txtName.text?.count)! > 4{
            if(txtEmail.text?.isValidEmail())!{
        if(txtPassword.text?.isValidPassword())!{
        
            if(txtAddress.text?.count)! > 4{
                if(txtCreditCard.text?.count)! > 4{
                    
                        if(txtShippingInfo.text?.count)! > 4{
                    
            
        
                            let sb = UIStoryboard(name: "Main", bundle: nil)
                            let loginVC = sb.instantiateViewController(withIdentifier: "signIn") as! SignInViewController
                            self.navigationController?.pushViewController(loginVC, animated: true)
                            
            
        }
                        else{
                            let shippingAlert = UIAlertController(title: "ShippingInfo Alert", message: "ShippingInfo must contain 4 characters", preferredStyle: .alert)
                            shippingAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                            self.present(shippingAlert, animated: true)
                        }
                    }
                else{
                    let cardAlert = UIAlertController(title: "Credit card Alert", message: "Invalid credit information", preferredStyle: .alert)
                    cardAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                    self.present(cardAlert, animated: true)
                }
            }else{
                let addressAlert = UIAlertController(title: "Address Alert", message: "Invalid address", preferredStyle: .alert)
                addressAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                self.present(addressAlert, animated: true)
            }
        }else{
            let passwordAlert = UIAlertController(title: "Password Alert", message: "Invalid password", preferredStyle: .alert)
            passwordAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
            self.present(passwordAlert, animated: true)
                }
            }else{
                        let emailAlert = UIAlertController(title: "Email Alert", message: "Invalid Email", preferredStyle: .alert)
                emailAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                self.present(emailAlert, animated: true)
                    }
            }else{
                    let nameAlert = UIAlertController(title: "Username Alert", message: "Invalid username", preferredStyle: .alert)
           nameAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
            self.present(nameAlert, animated: true)
                }
    }
                        
    
    
    
    }
    
   


