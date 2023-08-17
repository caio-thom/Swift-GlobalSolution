//
//  QuizManager.swift
//  caioThomaz_rm84377
//
//  Created by Caio Thomaz Nogueira on 07/06/23.
//

import Foundation

class QuizManager{
    
    private let quizes: [(question: String, correctAnswer: String, options: [String])] = [
            (question: "Em média quanto um ser humano consome de comida em KG", correctAnswer: "675KG",
             options: ["550KG", "675KG", "851KG", "696KG"]),
            (question: "Qual a porcentagem que a agricultura possui na economia Mundial?", correctAnswer: "4%",
             options: ["3.5%", "4%", "5%", "3%"]),
            (question: "Qual a porcentagem de grãos produzidos por fazendas com menos de 2 hectares no mundo", correctAnswer: "33%",
             options: ["10%", "33%", "15%", "25%"]),
            (question: "Qual o grão mais produzido no pais?", correctAnswer: "milho",
             options: ["milho", "soja", "arroz", "feijão"]),
            (question:
                """
                  Qual o ranking do Brasil em paises que mais tem desperdício de alimento?
                """, correctAnswer: "10 colocado",
                     options: ["10 colocado", "25 colocado", "35 colocado","15 colocado"]),
            (question: "Quais são as principais causas de desperdício de comida?", correctAnswer: "grande quantidade de alimentos perecíveis",
             options: ["grande quantidade de alimentos perecíveis", "manuseio incorreto dos alimentos", "condições de embalagem inadequadas", "neficiência no transporte e armazenamento"]),
            (question: "Qual estado brasileiro produz mais em produção agrícula?", correctAnswer: "Mato Grosso",
             options: ["Rio Grande do sul", "Mato Grosso do sul", "São Paulo", "Mato Grosso"]),
            
            (question: "Qual grão é o mais importado pelo Brasil?", correctAnswer: "soja",
             options: ["arroz", "milho", "trigo", "soja"]),
            (question: "Qual grão é o mais produzido do mundo?", correctAnswer: "milho",
             options: ["milho", "soja", "arroz", "trigo"]),
            (question: "Quantas pessoas sofrem de fome no mundo?", correctAnswer: "entre 720 milhões e 811 milhões",
             options: ["entre 720 milhões e 811 milhões", "entre 710 milhões e 841 milhões", "entre 820 milhões e 841 milhões", "entre 520 milhões e 611 milhões"]),
            (question: "Qual a porcentagem de pessoas que não tem acesso regulr a alimentos adequados?", correctAnswer: "30%",
             options: ["45%", "20%", "35%", "30%"]),
            (question: "Quantas crianças com menos de 5 anos sofrem de nanismo no mundo", correctAnswer: "149,2 milhões",
             options: ["149,2 milhões", "159,9 milhões", "169 milhões", "130 milhões"]),
            ]
    
    private var quiz: Quiz!
    private var _totalAnswers = 0
    private var _totalCorrectAnswers = 0
    
    var question: String {
        return quiz.question
    }
    var option: [String]{
        return quiz.option
    }
    var totalAnswers: Int{
        return _totalAnswers
    }
    var totalCorrectAnswers: Int{
        return _totalCorrectAnswers
    }
    
    func refreshQuiz(){
        let randonIndex = Int(arc4random_uniform(UInt32(quizes.count)))
        let quizData = quizes[randonIndex]
        
        quiz = Quiz(question: quizData.question, option: quizData.options, correctAnswer: quizData.correctAnswer)
    }
    
    func validateAnswer(index:Int) {
        _totalAnswers += 1
        if quiz.validateOption(index) {
            _totalCorrectAnswers += 1
        }
    }
}
