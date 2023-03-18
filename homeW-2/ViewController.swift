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
    
    @IBOutlet weak var buttonSquare: UIButton!
    
    @IBAction func SignIn(_ sender: Any) {
        let vs = UIStoryboard(name: "Main", bundle: nil)
        let fifth = vs.instantiateViewController(withIdentifier: "go")
        if email1.text?.isEmpty ?? true && password1.text?.isEmpty ?? true{
            email1.layer.borderWidth = 2
            email1.layer.borderColor = UIColor.red.cgColor
            email1.placeholder = "Заполните, пожалуйста"
            password1.layer.borderWidth = 2
            password1.layer.borderColor = UIColor.red.cgColor
            password1.placeholder = "Заполните, пожалуйста"
        }else if email1.text?.isEmpty ?? true{
            email1.layer.borderWidth = 2
            email1.layer.borderColor = UIColor.red.cgColor
            email1.placeholder = "Заполните, пожалуйста"
            password1.layer.borderWidth = 0
        }else if password1.text?.isEmpty ?? true{
            password1.layer.borderWidth = 2
            password1.layer.borderColor = UIColor.red.cgColor
            password1.placeholder = "Заполните, пожалуйста"
            email1.layer.borderWidth = 0
        }else{
            email1.layer.borderWidth = 0
            password1.layer.borderWidth = 0
            self.navigationController?.pushViewController(fifth, animated: true)
        }
    }
    
    @IBOutlet weak var eyeButton: UIButton!
    
    private var isHidden = true
    
    @IBAction func buttonEye(_ sender: Any){
        if isHidden {
            eyeButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            password1.isSecureTextEntry = false
        } else {
            eyeButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            password1.isSecureTextEntry = true
        }
        isHidden = !isHidden
    }
    
    private var paint = true
    @IBAction func buttonSquare(_ sender: Any) {
        if paint{
            buttonSquare.backgroundColor = .black
        }else{
            buttonSquare.backgroundColor = .white
        }
        paint = !paint
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

