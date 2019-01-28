//
//  ViewControllerTableViewCell.swift
//  GasApp
//
//  Created by user on 12/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var OrderNum: UILabel!
    
    @IBOutlet weak var service: UILabel!
    
    
    @IBOutlet weak var status: UILabel!
    
    
    @IBOutlet weak var date: UILabel!
    
    
    @IBOutlet weak var service_name: UILabel!
    
    @IBOutlet weak var total: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
