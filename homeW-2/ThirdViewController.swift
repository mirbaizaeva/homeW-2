//
//  ThirdViewController.swift
//  homeW-2
//
//  Created by Nurjamal Mirbaizaeva on 21/2/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textFieldSMS: UITextField!
    
    @IBOutlet weak var textNumber: UITextField!
    
    @IBAction func GetOtp(_ sender: Any) {
        if textNumber.text? .isEmpty ?? true{
            textFieldSMS.isEnabled = false
            textNumber.layer.borderWidth = 2
            textNumber.layer.borderColor = UIColor.red.cgColor
            textNumber.placeholder = "Заполните"
        }else{
            textNumber.layer.borderWidth = 0
            textFieldSMS.isEnabled = true
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if textFieldSMS.text?.isEmpty ?? true{
            textFieldSMS.layer.borderWidth = 2
            textFieldSMS.layer.borderColor = UIColor.red.cgColor
            return false
        }else{
            textFieldSMS.layer.borderWidth = 0
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
