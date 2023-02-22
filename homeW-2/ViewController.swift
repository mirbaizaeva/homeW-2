//
//  ViewController.swift
//  homeW-2
//
//  Created by Nurjamal Mirbaizaeva on 20/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email1: UITextField!
    
    @IBOutlet weak var password1: UITextField!
    
    private func isTexstField(textField: UITextField)-> Bool{
        guard let text = textField.text else{return false}
        if text.isEmpty{
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Заполните, пожалуйста"
            return false
        }else{
            textField.layer.borderWidth = 0
            return true
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTexstField(textField: email1) && !isTexstField(textField: password1){
            return false
        }else if !isTexstField(textField: email1){
            return false
        }else if !isTexstField(textField: password1){
            return false
        }else {
            return true
        }
    }
    
    @IBAction func buttonEye(_ sender: Any){
//        guard password1.text == nil else{return}
        password1.placeholder = password1.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

