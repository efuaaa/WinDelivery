//
//  File.swift
//  GasApp
//
//  Created by user on 22/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import Foundation

class Order{
             var Delivery_name:String = ""
           var Delivery_hall:String = ""
           var Delivery_phone:String = ""
           var Service_name:String = ""
         var   Amount_paid:String = ""
           var Charge:String = ""
          var  Total:String = ""
          var  Status:String = ""
          var  Order_id:String = ""
          var  Created_at:String = ""
          var  Completed_at:String = ""
    
//    var orderNum:String = ""
//    var service:String = ""
//
//    var status:String = ""
//    var date:String = ""
    
    
    var JSonDict:[String:Any] = [:]
    
    
    
    init(delivery_name:String, delivery_hall:String, status:String, service_name:String, delivery_phone:String,  amount_paid:String , charge:String,  total:String, order_id:String, created_at:String, completed_at:String) {
        self.Delivery_name = delivery_name
        JSonDict["delivery_name"] = delivery_name
         self.Delivery_hall = delivery_hall
        JSonDict["delivery_hall"] = delivery_hall
         self.Delivery_phone = delivery_phone
        JSonDict["delivery_phone"] = delivery_phone
         self.Service_name = service_name
        JSonDict["service_id"] = service_name
          self.Amount_paid = amount_paid
        JSonDict["amount_paid"] = amount_paid
          self.Charge = charge
        JSonDict["charge"] = charge
          self.Total = total
        JSonDict["total"] = total
          self.Status = status
        JSonDict["status"] = status
          self.Order_id = order_id
        JSonDict["order_id"] = order_id
          self.Created_at = created_at
        JSonDict["created_at"] = created_at
          self.Completed_at = completed_at
        JSonDict["completed_at"] = completed_at
        
    }
    
    init(responseObject:AnyObject?) {
        if let object = responseObject{
            if let created_at = object.value(forKey: "id") as? String{
                self.Order_id = created_at
            }
            if let completed_at = object.value(forKey: "completed_at") as? String{
                self.Completed_at = completed_at
            }
            if let status = object.value(forKey: "status") as? String{
                self.Status = status
            }
//            if let closeTime = object.value(forKey: "closeTime") as? String{
//                self.closeTime = closeTime
//            }


    }


}
//    init(responseObject:AnyObject?) {
//        guard let responseObject = responseObject else { return }
//        try responseObject.value(for: "delivery_name")
//        Delivery_name = (responseObject["delivery_name"] as? String)!
//        Delivery_phone = (responseObject["delivery_phone"] as? String)!
//        Delivery_hall = (responseObject["delivery_hall"] as? String)!
//    }
//    
    
    
//    init?(json : [String: Any])
//    {
//        guard let container = json["data"] as? [String: Any],
//        let name = container["delivery_name"] as? String
//        else
//        {
//            return nil
//        }
//        self.Delivery_name = name
//    }
    
}
