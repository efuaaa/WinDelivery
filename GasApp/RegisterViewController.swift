//
//  RegisterViewController.swift
//  GasApp
//
//  Created by user on 09/01/2019.
//  Copyright © 2019 Qodehub. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class RegisterViewController: UIViewController {
    
    
    
    @IBOutlet weak var phoneNum: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorlabel: UILabel!
    @IBOutlet weak var register: UIButton!
    @IBAction func register(_ sender: UIButton) {
        
        
        if phoneNum.text?.isEmpty == true || password.text?.isEmpty == true || name.text?.isEmpty == true
        {
            
            errorlabel.isHidden = false
            errorlabel.text = "All the fields are required"
        }
       
        else
        {
            Alamofire.request("https://poba.tech/windelivery/public/api/v1/auth/register", method: .post,
            parameters: ["phone": phoneNum.text!, "password": password.text!,"name": name.text!, "fcm_device_id": "dsfghfjgkhlj"])
                //                          headers: ["Authorization": "Basic YWNjX2FjNzczZDMzMTJhNTQ3ZDo0Y2VmYWI5OGVlYTllZjk0NjQ1Njk1OTVlZDUyMDlmOQ=="])
                // 2
                .responseJSON { response in
                    
                    let apiResponseData = JSON( response.result.value!)
                    print( apiResponseData )
                    
                    if apiResponseData["success"].stringValue == "true"
                    {
                        //                    let alertWarning = UIAlertController(title: "Message", message: "whooops", preferredStyle: .alert)
                        let alertWarning = UIAlertController(title: "Message", message: "Registration succesful", preferredStyle: .alert)
                        
                        alertWarning.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel)
                        {
                            UIAlertAction in
                            alertWarning.dismiss(animated: true, completion: nil)
                        })
                        
                        self.present(alertWarning,animated: true,completion: nil)
                        
//                        response.result
                        
                    }
                    else {
                       
                        
                        let alertWarning = UIAlertController(title: "Message", message: "\(apiResponseData["error"]["message"])", preferredStyle: .alert)
                        alertWarning.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel)
                        {
                            UIAlertAction in
                            alertWarning.dismiss(animated: true, completion: nil)
                        })
                        self.present(alertWarning,animated: true,completion: nil)
                        
                        return
                    }
                   
                    
                    
            }

        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        phoneNum.layer.cornerRadius = 5.0
        phoneNum.layer.borderWidth = 1.0
        phoneNum.layer.borderColor = UIColor.lightGray.cgColor
        name.layer.cornerRadius = 5.0
        name.layer.borderWidth = 1.0
        name.layer.borderColor = UIColor.lightGray.cgColor
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
        
        name.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: name.frame.height))
        name.leftViewMode = .always
        
        // Create a padding view for padding on right
        name.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: name.frame.height))
        name.rightViewMode = .always
        
        
        
        

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
