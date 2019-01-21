//
//  ViewController.swift
//  GasApp
//
//  Created by user on 09/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    let list = ["images-2", "images", "images-3"]
    let num = ["123", "355", "2332", "332"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
//        cell.bookmark.images = UIImage(named: list[indexPath.row]+ ".png")
        
        
        tableView.estimatedRowHeight = 145
        tableView.rowHeight = 100 ;
        
        cell.OrderNum.text = num[indexPath.row]
    
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

