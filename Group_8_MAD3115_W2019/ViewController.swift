//
//  ViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(splash), with:nil, afterDelay:3)
    }
    
    @objc func splash()
    {
        performSegue(withIdentifier: "splash", sender: self)
    }



}

