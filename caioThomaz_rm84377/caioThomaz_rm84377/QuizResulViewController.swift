//
//  QuizResulViewController.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import UIKit

class QuizResulViewController: UIViewController {

    @IBOutlet weak var lblCorrect: UILabel!
    @IBOutlet weak var lblAnswered: UILabel!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var lblWrong: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        lblAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        
        lblCorrect.text = "Perguntas corretas:  \(totalCorrectAnswers)"
        lblWrong.text = "Perguntas erradas:  \(totalAnswers - totalCorrectAnswers)"
        
       let score = totalCorrectAnswers * 100 / totalAnswers
        lblScore.text = "\(score)%"
    }
    
   
    
    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
