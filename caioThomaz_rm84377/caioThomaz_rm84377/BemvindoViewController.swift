//
//  BemvindoViewController.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class BemvindoViewController: UIViewController {

    var txtDoUser: String = ""
    @IBOutlet weak var lblUserName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblUserName.text = txtDoUser

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogar(_ sender: Any) {
        performSegue(withIdentifier: "segueLogin", sender: nil)
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
