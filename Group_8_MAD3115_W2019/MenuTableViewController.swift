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
                //performSegue(withIdentifier: "toproducts", sender: self)
                
                //self.navigationController?.pushViewController(products, animated: true)
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let products = sb.instantiateViewController(withIdentifier: "products") as! ProductsTableViewController
                
                self.navigationController?.pushViewController(products, animated: true)
                
                
            case 3:
                print("Go to Order History Page")
            case 4:
                print("Go to cart")
            case 5:
                print("Go to Help Page")
            case 6:
                
                print("Go to Contact US Page")
            case 7:
                print("Call Logout")
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let signin = sb.instantiateViewController(withIdentifier: "signIn") as! SignInViewController
                self.present(signin, animated: true)
                
            default:
                print("Invalid Option")
            }
        }
    }
    
}
