//
//  PageItemViewController.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class PageItemViewController: UIViewController {

    var grao: Grao?
    
    @IBOutlet weak var ivGrao: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSummary: UILabel!
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var lblSolo: UILabel!
    @IBOutlet weak var lblIrriga: UILabel!
    @IBOutlet weak var lblmes: UILabel!
    @IBOutlet weak var lblplantio: UILabel!
    @IBOutlet weak var lblpreco: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let page = grao {
            ivGrao.image = UIImage(named: page.image)
            lblName.text = page.name
            lblSummary.text = page.summary
            lblTemp.text = page.temperature
            lblSolo.text = page.ground
            lblIrriga.text = page.watering
            lblplantio.text = page.coleta
            lblpreco.text = page.preco
            lblmes.text = page.mes
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openComprar(_ sender: UIButton) {
        performSegue(withIdentifier: "segueComprar", sender: nil)
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
