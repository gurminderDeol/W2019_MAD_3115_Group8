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
     let p1=Product()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton=true
        
        getproducts()
        p1.displayData()
      
        

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
                //performSegue(withIdentifier: "toproducts", sender: self)
                
                //self.navigationController?.pushViewController(products, animated: true)
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let products = sb.instantiateViewController(withIdentifier: "products") as! ProductsViewController
                
                self.navigationController?.pushViewController(products, animated: true)
                
                
            case 3:
                print("Go to Order History Page")
            case 4:
                print("Go to cart")
            case 5:
                print("Go to Help Page")
            case 6:
                
                print("Go to Contact US Page")
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let contactUs = sb.instantiateViewController(withIdentifier: "contactUs") as! ContactUsViewController
               // self.navigationController?.pushViewController(contactUs, animated: true)
                  self.present(contactUs, animated: true)
            case 7:
                print("Call Logout")
                
                
            default:
                print("Invalid Option")
            }
        }
    }
    
    

    
    func getproducts()
    {
        let product1 = Product(productId: "P001", productName: "Hard Drive", productPrice: 120.00)
        let product2 = Product(productId: "P002", productName: "ZIP drive", productPrice: 90.00)
        let product3 = Product(productId: "P003", productName: "Floppy disk", productPrice: 50.00)
        let product4 = Product(productId: "P004", productName: "Monitor", productPrice: 300.00)
        let product5 = Product(productId: "P005", productName: "iPhone 7 Plus", productPrice: 1200.00)
        //  let totalProducts = [product1,product2,product3,product4,product5]
        
        p1.addProduct(productId: "P001", product: product1)
        p1.addProduct(productId: "P002", product: product2)
        p1.addProduct(productId: "P003", product: product3)
        p1.addProduct(productId: "P004", product: product4)
        p1.addProduct(productId: "P005", product: product5)
    }
    
}
