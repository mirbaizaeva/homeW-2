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
    
    private func texstField(textField: UITextField)-> Bool{
        guard let text = textField.text else{return false}
        if text.isEmpty, textField == textField{
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Символы не совпадают"
            return false
        }else{
            textField.layer.borderWidth = 0
            return true
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !texstField(textField: newPassword), !texstField(textField: confirmPassword){
            return false
        }else if !texstField(textField: newPassword){
            return false
        }else if !texstField(textField: confirmPassword){
            return false
        }else{
            return true
        }
    }
    
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
