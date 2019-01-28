//
//  MakeOrderTableViewController.swift
//  GasApp
//
//  Created by user on 28/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MakeOrderTableViewController: UITableViewController {
    
    
     var orderList:[[String:Any]] = [[String: Any]]()
    
    
    @IBOutlet weak var order_id: UILabel!
    
    @IBOutlet weak var service_name: UILabel!
    
    @IBOutlet weak var amount_paid: UILabel!
    
    @IBOutlet weak var charge: UILabel!
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var created_at: UILabel!
    
    @IBOutlet weak var completed_at: UILabel!
    var SelectedOrder:Order?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Order Details"
        
        

        
        if let order = SelectedOrder{
            order_id.text = order.Order_id
            service_name.text = order.Service_name
            amount_paid.text = order.Amount_paid
            charge.text = order.Charge
            total.text = order.Total
            status.text = order.Status
            created_at.text = order.Created_at
            completed_at.text = order.Completed_at
            
        }
        
        
        
       
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
      return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete implementation, return the number of rows
        if section == 0
        {
        return 8
        }
        else{
            return 2
        }
    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        // Configure the cell...
//
//        SelectSize.text = orderList[indexPath.row]
//        return cell
//    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
