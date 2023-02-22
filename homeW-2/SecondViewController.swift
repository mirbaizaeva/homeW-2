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
    
    @IBOutlet weak var conPassword: UITextField!
    
    private func isTexst(textF: UITextField)-> Bool{
        guard let text = textF.text else{return false}
        if text.isEmpty{
            textF.layer.borderWidth = 2
            textF.layer.borderColor = UIColor.red.cgColor
            textF.placeholder = "Заполните, пожалуйста"
            return false
        }else{
            textF.layer.borderWidth = 0
            return true
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTexst(textF: fullName), !isTexst(textF: number), !isTexst(textF: email2), !isTexst(textF: userName), !isTexst(textF: password2), !isTexst(textF: conPassword){
            return false
        }else if !isTexst(textF: fullName){
            return false
        }else if !isTexst(textF: number){
            return false
        }else if !isTexst(textF: email2){
            return false
        }else if !isTexst(textF: userName){
            return false
        }else if !isTexst(textF: password2){
            return false
        }else if !isTexst(textF: conPassword){
                return false
        }else {
            return true
        }
    }
    
    
    @IBOutlet weak var confirnPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
