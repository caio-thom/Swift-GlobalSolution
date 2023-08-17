//
//  ViewController.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func openRegister(_ sender: UIButton){
        performSegue(withIdentifier: "segueRegister", sender: nil)
    }
    
    @IBAction func openLogin(_ sender: UIButton) {
        performSegue(withIdentifier: "segueLogin", sender: nil)
    }

}

