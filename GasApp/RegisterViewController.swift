//
//  RegisterViewController.swift
//  GasApp
//
//  Created by user on 09/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    
    @IBOutlet weak var phoneNum: UITextField!
    
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    
    @IBOutlet weak var register: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        phoneNum.layer.cornerRadius = 5.0
        phoneNum.layer.borderWidth = 1.0
        phoneNum.layer.borderColor = UIColor.lightGray.cgColor
        confirmPassword.layer.cornerRadius = 5.0
        confirmPassword.layer.borderWidth = 1.0
        confirmPassword.layer.borderColor = UIColor.lightGray.cgColor
        password.layer.cornerRadius = 5.0
        password.layer.borderWidth = 1.0
        password.layer.borderColor = UIColor.lightGray.cgColor
        register.layer.cornerRadius = 5.0
        
        // Do any additional setup after loading the view.
        
        phoneNum.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: phoneNum.frame.height))
        phoneNum.leftViewMode = .always
        
        // Create a padding view for padding on right
        phoneNum.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: phoneNum.frame.height))
        phoneNum.rightViewMode = .always
        
        
        
        password.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: password.frame.height))
        password.leftViewMode = .always
        
        // Create a padding view for padding on right
        password.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: password.frame.height))
        password.rightViewMode = .always
        
        confirmPassword.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: confirmPassword.frame.height))
        confirmPassword.leftViewMode = .always
        
        // Create a padding view for padding on right
        confirmPassword.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: confirmPassword.frame.height))
        confirmPassword.rightViewMode = .always
        
        
        
        

        // Do any additional setup after loading the view.
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
