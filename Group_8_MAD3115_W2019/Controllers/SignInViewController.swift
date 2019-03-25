//
//  SignInViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    let user = UserLogin()
   
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var switchStatus: UISwitch!
    var name:String?
    var pass:String?
    let userdefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let s2 = UserLogin(sid:"jagmeet",pass:"123")
        let s1 = UserLogin(sid:"gurminder",pass:"kaur")
        
        user.reg(uid: "jagmeet", s: s2)
        user.reg(uid: "gurminder", s: s1)
        //user.reg(uid: "deolgurminder",s: s3)
        print(user.users)
        
        if let uid = userdefaults.string(forKey: "userid")
        {
            txtEmail.text = uid
            switchStatus.isOn = true
        }
        if let vid = userdefaults.string(forKey: "pass")
        {
            txtPassword.text = vid
            switchStatus.isOn = true
        }
        
    }
    
    @IBAction func btnSignIn(_ sender: UIButton) {
        
        if switchStatus.isOn
        {
            userdefaults.set(txtEmail.text,forKey:"userid")
            userdefaults.set(txtPassword.text,forKey:"pass")
            
        }
        else
        {
            userdefaults.removeObject(forKey: "userid")
            userdefaults.removeObject(forKey: "pass")
            
        }
    
        let c = user.checklogin(uid: txtEmail.text!, pass: txtPassword.text!)
        
        if (c)
        {
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let lionvc=sb.instantiateViewController(withIdentifier: "menu") as!  MenuTableViewController
            self.navigationController?.pushViewController(lionvc, animated: true)
            lionvc.name = txtEmail.text
            lionvc.password = txtPassword.text
        
        }
        else
        {
            let alert = UIAlertController(title:nil,message:"Invalid Details",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
            self.txtEmail.text=""
            self.txtPassword.text=""
        }
        
    }
   
       @IBAction func btnSignUp(_ sender: UIButton) {
       let s = UIStoryboard(name: "Main", bundle: nil)
        let signUp = s.instantiateViewController(withIdentifier: "signUp") as!  SignUpViewController
        self.navigationController?.pushViewController(signUp, animated: true)
        
    
    }
    

}
