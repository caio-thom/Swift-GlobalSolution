//
//  Quiz.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import Foundation
class Quiz {
    
    let question: String
    let option: [String]
   private let correctAnswer: String
    
    init(question: String, option: [String], correctAnswer: String) {
        self.question = question
        self.option = option
        self.correctAnswer = correctAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = option[index]
        return answer == correctAnswer
    }
    
    deinit {
        print("novo quiz")
    }
}
