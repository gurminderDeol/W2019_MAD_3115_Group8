//
//  ProductCollectionViewController.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-22.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    let s = ShoppingCart()
    var currentCell = 0
    let data = Product.prod1
    var a=[Product]()
    @IBOutlet weak var pcollection: UICollectionView!
    override func viewDidLoad() {
        self.pcollection.delegate=self
        self.pcollection.dataSource=self
        super.viewDidLoad()
        getproducts()
        
        // Do any additional setup after loading the view.
    }
    
    func getproducts()
    {
        let product1 = Product(productId: "1", productName: "Monitor", productPrice: 200.00, image: "monitor.jpg")
        let product2 = Product(productId: "2", productName: "USB", productPrice: 300.00, image: "usb.jpg")
        let product3 = Product(productId: "3", productName: "Printer", productPrice: 100.00, image: "printer.jpg")
        let product4 = Product(productId: "4", productName: "Mouse", productPrice: 50.00, image: "mouse.jpg")
        
        data.addProduct(productId: "1", product: product1)
        data.addProduct(productId: "2", product: product2)
        data.addProduct(productId: "3", product: product3)
        data.addProduct(productId: "4", product: product4)
        
        
        a.append(data.productdict["1"]!)
        a.append(data.productdict["2"]!)
        a.append(data.productdict["3"]!)
        a.append(data.productdict["4"]!)
            }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.productdict.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collect = collectionView.dequeueReusableCell(withReuseIdentifier: "pcell", for: indexPath) as! ProductCollectionViewCell
        let cv = a[indexPath.row]
        collect.lblProductId.text = cv.productId
        collect.lblProductName.text = cv.productName
        collect.lblProductDetails.text = String(cv.productPrice)
        collect.productImage.image = UIImage(named: cv.image)
        collect.btnAdd1.tag = indexPath.row
        collect.delegate = self
        collect.index = indexPath.row
        collect.btnAdd1.addTarget(self, action: #selector(btnAddItem(_ :)), for: .touchUpInside)
    
        
        return collect
    }
    
    
    @IBAction func btnAddItem(_ sender: UIButton) {
         print("\(sender.tag)")
    }
}








extension ProductViewController: OnSelection
{
    
    func passProduct(index: Int) {
        let p = a[index]
        print(p.productName)
        
        let today=Date()
        let shopcart = ShoppingCart(PrductId:p.productId,PName:p.productName,Price:p.productPrice,Quantity:Quantity.quantity,Date:today)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let lionvc=sb.instantiateViewController(withIdentifier: "cart") as!  CartViewController
        lionvc.s = shopcart
        self.navigationController?.pushViewController(lionvc, animated: true)
        
        print(s.productList)
}
    

}
