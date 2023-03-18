//
//  FourthViewController.swift
//  homeW-2
//
//  Created by Nurjamal Mirbaizaeva on 21/2/23.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var textFieldSMS: UITextField!
    
    @IBOutlet weak var newPassword: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBAction func Submit(_ sender: Any) {
        let vs = UIStoryboard(name: "Main", bundle: nil)
        let fifth = vs.instantiateViewController(withIdentifier: "go")
        if newPassword.text?.isEmpty ?? true && confirmPassword.text?.isEmpty ?? true{
            newPassword.layer.borderWidth = 2
            newPassword.layer.borderColor = UIColor.red.cgColor
            newPassword.placeholder = "Заполните"
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.red.cgColor
            confirmPassword.placeholder = "Заполните"
        }else if newPassword.text?.isEmpty ?? true{
            newPassword.layer.borderWidth = 2
            newPassword.layer.borderColor = UIColor.red.cgColor
            newPassword.placeholder = "Заполните"
        }else if confirmPassword.text?.isEmpty ?? true{
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.red.cgColor
            confirmPassword.placeholder = "Заполните"
        } else if newPassword.text != confirmPassword.text{
            newPassword.layer.borderColor = UIColor.red.cgColor
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.red.cgColor
        }else{
            newPassword.layer.borderWidth = 0
            confirmPassword.layer.borderWidth = 0
            self.navigationController?.pushViewController(fifth, animated: true)
        }
    }

    @IBOutlet weak var eyeButtonFour1: UIButton!
    
    @IBOutlet weak var eyeButtonFour2: UIButton!
    
    private var isHidd = true
    
    @IBAction func eyeFour1(_ sender: Any) {
        if isHidd{
            eyeButtonFour1.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            newPassword.isSecureTextEntry = false
        }else {
            eyeButtonFour1.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            newPassword.isSecureTextEntry = true
        }
        isHidd = !isHidd
    }

    @IBAction func eyeFour2(_ sender: Any) {
        if isHidd{
            eyeButtonFour2.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            confirmPassword.isSecureTextEntry = false
        }else {
            eyeButtonFour2.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            confirmPassword.isSecureTextEntry = true
        }
        isHidd = !isHidd
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
