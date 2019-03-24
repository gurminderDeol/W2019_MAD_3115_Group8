//
//  Enum.swift
//  Group_8_MAD3115_W2019
//
//  Created by Kiran Mehal on 2019-03-23.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
extension String
{
    //reference -  https://iosdevcenters.blogspot.com/2017/06/password-validation-in-swift-30.html
    func isValidPassword() -> Bool
    {
        let passwordRegEx = "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}"
        
        let passwordTest = NSPredicate(format:"SELF MATCHES %@",  passwordRegEx)
        return passwordTest.evaluate(with: self)
    }
    
    
    //reference - https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
    func isValidEmail() -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    
    
}
