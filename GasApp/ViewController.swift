//
//  ViewController.swift
//  GasApp
//
//  Created by user on 09/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var orderList:[[String:Any]] = [[String: Any]]()
//    var serviceList:[[String:Any]] = [[String: Any]]()
    
    
    var oRderlist:[Order] = []
    
    
   
    @IBOutlet weak var tableview: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
//        cell.bookmark.images = UIImage(named: list[indexPath.row]+ ".png")
        
        
        tableView.estimatedRowHeight = 120
        tableView.rowHeight = 80 ;
        
        if self.orderList.count > 0
        {
        let eachOrder = self.orderList[indexPath.row]
            
//        cell.OrderNum?.text = (eachOrder["id"] as! Int)
        cell.service?.text = (eachOrder["delivery_name"] as? String) ?? ""
        cell.status?.text = (eachOrder["status"] as? String) ?? ""
       cell.date?.text = (eachOrder["created_at"] as? String) ?? ""
            cell.total?.text = (eachOrder["total_amount"] as? String) ?? ""
            cell.service_name?.text = (eachOrder["service_id"] as? String) ?? ""
            
        }
        
//        if self.serviceList.count > 0
//        {
//            let eachIndex = self.serviceList[indexPath.row]
//             cell.service_name?.text = (eachIndex["name"] as? String) ?? ""
//        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        //        navigateToPage(from:self,storyboardName: "Main", id: "vendorDetails")
        let storyboard:UIStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let detailsViewController = (storyboard.instantiateViewController(withIdentifier: "detail") as? MakeOrderTableViewController)!
        detailsViewController.SelectedOrder = oRderlist[index]
        
       // self.present(detailsViewController, animated: true, completion: nil)
    }
    
    
//    func getOrders(json: JSON)
//    {
//        for i in json["data"]
//        {
//
//           print(i)
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Order Details"
        Alamofire.request("https://poba.tech/windelivery/public/api/v1/auth/login", method: .post,
                          parameters: ["phone": "0275799028", "password": "secret", "fcm_device_id": "dsfghfjgkhlj"])
            .responseJSON
            { response in
                
                let apiResponseData1 = JSON( response.result.value!)
//                debugPrint( apiResponseData )
                
                Alamofire.request("https://poba.tech/windelivery/public/api/v1/orders", method: .get,
                headers: ["Authorization": "Bearer \(apiResponseData1["data"]["access_token"])"])
                .responseJSON
            { response in
                

                if let apiResponseData = response.result.value as! [String: Any]? {

                   
                    if let responseData = apiResponseData["data"] as! [[String: Any]]?
                   
                    {
                        
               
                        self.orderList = responseData
                        
                        

                        
                        for item in responseData{
                            
                            let responseService = Order(responseObject:item.values as AnyObject)
                            self.oRderlist.append(responseService)
                            print(responseService)
                            
//                            if let responseSer = responseService as! [String: Any]? {
//                                print(responseSer)
////                                if let respos = responseSer as? [[String: Any]] {
////                                print(respos)
////                                }
////                                 self.serviceList = responseSer
//                            }
////
//
//

                        }

                    }
                    
                
            }
                self.tableview?.reloadData()
        }
                
        }
        
    }

    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

