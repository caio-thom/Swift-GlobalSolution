//
//  CalViewController.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class CalViewController: UIViewController {

     @IBOutlet weak var lblGrao: UILabel!
     @IBOutlet weak var tfValue: UITextField!
     @IBOutlet weak var lblResult: UILabel!
     
     override func viewDidLoad() {
         super.viewDidLoad()

         // Do any additional setup after loading the view.
     }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)

            }
     
     @IBAction func showNext(_ sender: UIButton) {
         switch lblGrao.text! {
         case "Soja":
             lblGrao.text = "Morango"
         case "Morango":
             lblGrao.text = "Limão"
         case "Limão":
             lblGrao.text = "Caqui"
         case "Caqui":
             lblGrao.text = "Milho"
         case "Milho":
             lblGrao.text = "Vagem"
         case "Vagem":
             lblGrao.text = "Arroz"
         case "Arroz":
             lblGrao.text = "Laranja"
         case "Laranja":
             lblGrao.text = "Tomate"
         default:
             lblGrao.text = "soja"
         }
         
         calPreco(nil)
         
     }
     
     
     @IBAction func calPreco(_ sender: UIButton?) {
         
         switch lblGrao.text! {
         case "Soja":
             calSoja()
         case "Morango":
             calMorango()
         case "Limão":
             calLimao()
         case "Caqui":
             calCaqui()
         case "Milho":
             calMilho()
         case "Vagem":
             calVagem()
         case "Arroz":
             calArroz()
         case "Laranja":
             calLaranja()
         default:
            calTomate()
            
         }
         
         func calSoja(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 6850)
         }
         func calMorango(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 140000)
         }
         func calLimao(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 10000)
         }
         func calCaqui(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 7200.81)
         }
         func calLaranja(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 8138.75)
         }
         func calMilho(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 6000)
         }
         func calArroz(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 11567.74)
         }
         func calTomate(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 100000)
         }
         func calVagem(){
             guard let value = Double(tfValue.text!) else {return}
             lblResult.text = String(value * 3102.81)
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
