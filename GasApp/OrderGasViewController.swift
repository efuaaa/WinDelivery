//
//  OrderGasViewController.swift
//  GasApp
//
//  Created by user on 10/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import UIKit

class OrderGasViewController: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var selectGas: UIButton!
    @IBOutlet var cylinderItemsOutlet: [UIButton]!
    @IBOutlet weak var gasAmount: UITextField!
    @IBOutlet weak var hallField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneNum: UITextField!
    
    
    //Actions
    @IBAction func selectAction(_ sender: UIButton) {
        cylinderItemsOutlet.forEach { (button) in
            UIView.animate(withDuration: 0.25, animations: {
                 button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
            })
       
        }
    }
    
    
    @IBAction func menuItemsAction(_ sender: UIButton) {
selectGas.titleLabel?.text = sender.titleLabel?.text
        cylinderItemsOutlet.forEach { (button) in
            UIView.animate(withDuration: 0.25, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNum.layer.cornerRadius = 5.0
        phoneNum.layer.borderWidth = 1.0
        phoneNum.layer.borderColor = UIColor.lightGray.cgColor
        gasAmount.layer.cornerRadius = 5.0
        gasAmount.layer.borderWidth = 1.0
        gasAmount.layer.borderColor = UIColor.lightGray.cgColor
        hallField.layer.cornerRadius = 5.0
        hallField.layer.borderWidth = 1.0
        hallField.layer.borderColor = UIColor.lightGray.cgColor
        nameField.layer.cornerRadius = 5.0
        nameField.layer.borderWidth = 1.0
        nameField.layer.borderColor = UIColor.lightGray.cgColor
       
        
        // Do any additional setup after loading the view.
        
        phoneNum.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: phoneNum.frame.height))
        phoneNum.leftViewMode = .always
        
        // Create a padding view for padding on right
        phoneNum.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: phoneNum.frame.height))
        phoneNum.rightViewMode = .always
        
        
        gasAmount.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: gasAmount.frame.height))
        gasAmount.leftViewMode = .always
        
        // Create a padding view for padding on right
        gasAmount.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: gasAmount.frame.height))
        gasAmount.rightViewMode = .always
        
        
        hallField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: hallField.frame.height))
        hallField.leftViewMode = .always
        
        // Create a padding view for padding on right
        hallField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: hallField.frame.height))
        hallField.rightViewMode = .always
        
        
        nameField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: nameField.frame.height))
        nameField.leftViewMode = .always
        
        // Create a padding view for padding on right
        nameField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: nameField.frame.height))
        nameField.rightViewMode = .always
        
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
