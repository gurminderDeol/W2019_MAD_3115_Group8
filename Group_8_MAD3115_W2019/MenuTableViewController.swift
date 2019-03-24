//
//  MenuTableViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    @IBOutlet var tblMenu: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton=true
        
        
      
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0
        {
            switch indexPath.row {
            case 0:
                print(" ")
            case 1:
                print("Go to myProfile")
                
                /*let sb = UIStoryboard(name: "Main", bundle: nil)
                 let studentDetailsVC = sb.instantiateViewController(withIdentifier: "studentDetailsVC") as! StudentInforamtionViewController
                 
                 self.navigationController?.pushViewController(studentDetailsVC, animated: true)*/
            case 2:
                print("Go to Products Page")
                
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let product = sb.instantiateViewController(withIdentifier: "productPage") as! ProductViewController
                
                self.navigationController?.pushViewController(product, animated: true)
                
                
            case 3:
                print("Go to Order History Page")
            case 4:
                //print("Go to cart")
                let sb=UIStoryboard(name: "Main", bundle: nil)
                let homevc=sb.instantiateViewController(withIdentifier: "cart") as!   CartViewController
                self.navigationController?.pushViewController(homevc, animated: true)
            case 5:
                print("Go to Help Page")
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let help = sb.instantiateViewController(withIdentifier: "help") as! HelpViewController
             self.navigationController?.pushViewController(help, animated: true)
            case 6:
                
                print("Go to Contact US Page")
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let contactUs = sb.instantiateViewController(withIdentifier: "contactUs") as! ContactUsViewController
                self.navigationController?.pushViewController(contactUs, animated: true)
                  //self.present(contactUs, animated: true)
            case 7:
                print("Call Logout")
                
                
            default:
                print("Invalid Option")
            }
        }
    }
    
    

    
   
    
   
}
