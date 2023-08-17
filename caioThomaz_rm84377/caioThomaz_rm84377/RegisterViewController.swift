//
//  RegisterViewController.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtCPF: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtCivil: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)

            }

    @IBAction func btnRegister(_ sender: UIButton) {
        validar()
    }
    func validar(){
        let msg: String
        let msgPass: String
        msg = "Para continuar preencha todos os campos"
        msgPass = "As senhas devem ser iguais "
        
        if txtName.text!.isEmpty || txtPassword.text!.isEmpty || txtCPF.text!.isEmpty  || txtPass.text!.isEmpty || txtCivil.text!.isEmpty || txtEmail.text!.isEmpty || txtPhone.text!.isEmpty || txtLastName.text!.isEmpty {
            
            let alert = UIAlertController(title: "Atenção", message: msg, preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
        
         else if txtPassword.text != txtPass.text {
             
             let alertPass = UIAlertController(title: "Atenção", message: msgPass, preferredStyle: .alert)
             
             alertPass.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
             
             present(alertPass, animated: true, completion: nil)
        }
        
        else {
            performSegue(withIdentifier: "segueSucess", sender: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSucess"{
            let userName = segue.destination as! BemvindoViewController
            userName.txtDoUser = txtName.text!
        }
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
