//
//  SecondViewController.swift
//  homeW-2
//
//  Created by Nurjamal Mirbaizaeva on 21/2/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var email2: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password2: UITextField!
    
    @IBOutlet weak var secondPassword: UITextField!
    
    @IBOutlet weak var eyeConfirmPassword: UIButton!
    
    @IBOutlet weak var eyePassword: UIButton!
    
    private func isTextField(textField: UITextField)-> Bool{
        guard let textfiels = textField.text else {return false}
        if textfiels.isEmpty{
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Заполните"
            return false
        }else{
            return true
        }
    }
    
    @IBAction func SignUp(_ sender: Any) {
        let vs = UIStoryboard(name: "Main", bundle: nil)
        let fifth = vs.instantiateViewController(withIdentifier: "go")
        if !isTextField(textField: fullName) && !isTextField(textField: number) && !isTextField(textField: email2) && !isTextField(textField: userName) && !isTextField(textField: password2) && !isTextField(textField: secondPassword){
        }else if !isTextField(textField: fullName){
        }else if !isTextField(textField: number){
        }else if !isTextField(textField: email2){
        }else if !isTextField(textField: userName){
        }else if !isTextField(textField: password2){
        }else if !isTextField(textField: secondPassword){
        }else{
            fullName.layer.borderWidth = 0
            number.layer.borderWidth = 0
            email2.layer.borderWidth = 0
            userName.layer.borderWidth = 0
            password2.layer.borderWidth = 0
            secondPassword.layer.borderWidth = 0
            self.navigationController?.pushViewController(fifth, animated: true)
        }
    }
    
    private var hiddenSecond = true
    
    @IBAction func eyeSecond(_ sender: Any) {
        if hiddenSecond{
            eyePassword.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            password2.isSecureTextEntry = false
        }else{
            eyePassword.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            password2.isSecureTextEntry = true
        }
        hiddenSecond = !hiddenSecond
    }
    
    @IBAction func eyeSecond2(_ sender: Any) {
        if hiddenSecond{
            eyeConfirmPassword.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            secondPassword.isSecureTextEntry = false
        }else{
            eyeConfirmPassword.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            secondPassword.isSecureTextEntry = true
        }
        hiddenSecond = !hiddenSecond
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
