//
//  HelpViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-22.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadFile()
    }
    

    private func loadFile(){
        let localfilePath = Bundle.main.url(forResource: "help", withExtension: "html");
        let myRequest = NSURLRequest(url: localfilePath!);
        self.myWebView.loadRequest(myRequest as URLRequest);
        
    }
    

}
