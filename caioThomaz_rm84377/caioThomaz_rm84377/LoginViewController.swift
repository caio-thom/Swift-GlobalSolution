//
//  LoginViewController.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEMail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblMensEmail: UILabel!
    @IBOutlet weak var lblMensPass: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMensPass.text! = ""
        lblMensEmail.text! = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)

            }
    
    @IBAction func checkTextField(_ sender: UIButton) {
        if txtEMail.text!  == "" {
            lblMensEmail.text! = "O campo esta vazio "
        }
        else if txtPassword.text! == "" {
            lblMensPass.text! = "O campo esta vazio "
            }
        
        else {
          performSegue(withIdentifier: "segueHome", sender: nil)
        }
        
       
    }
}
