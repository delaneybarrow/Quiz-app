//
//  ViewController.swift
//  Quiz App
//
//  Created by Spence on 7/24/18.
//  Copyright © 2018 Delaney Barrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var questionLabel: UITextView!
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBAction func submitAnswer0(_ sender: UIButton) {
    }
    @IBAction func submitAnswer1(_ sender: UIButton) {
    }
    @IBAction func submitAnswer2(_ sender: UIButton) {
    }
    @IBAction func submitAnswer3(_ sender: UIButton) {
    }
    
    func setQuestion() {
        questionLabel.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        progressLabel.text = "Question: \(currentQuestionPosition + 1)/ \(questions.count)"
    }
    
    //    @IBAction func goToNextQuestion(_ sender: UIButton) {
//        questionLabel.text = "Hi."
//    }
//    @IBOutlet weak var answer1: UIButton!
//    @IBAction func nextAnswers(_ sender: UIButton) {
//
//    }
    
    struct Question {
        let question: String
        let answers: [String]
        let correctAnswer: Int
    }
    
    var questions: [Question] = [
        Question(
            question: "You know what, I'm just gonna say it. I don't care that you broke your ______.",
            answers: ["Wrist", "Knee", "Finger", "Elbow"],
            correctAnswer: 3),
        Question(
            question: "Hi.",
            answers: ["Hi", "Ok", "Hola", "Oh"],
            correctAnswer: 1),
        Question(
            question: "Have you ever had a ______ that you and you you were and...",
            answers: ["Dream", "Wish", "Goal", "Hope"],
            correctAnswer: 0)
        
    ]
    var currentQuestion: Question?
    var currentQuestionPosition: Int = 0
    var noCorrect: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

