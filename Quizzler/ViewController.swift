//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    
    // This will keep track of the state of the app
    var questionNumber: Int = 0
    var score: Int = 0
    
    // UI Elements from the storyboard
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
        updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }
        else if sender.tag == 2{
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1)/13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        if questionNumber <= 12{
            //Update the question label and the UI
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }else{
            //Create the the alert that the user has reached the end of the quiz
            let alert = UIAlertController(title: "Awesome", message: "You've finished all of the questions. Would you like to start over?", preferredStyle: .alert)
            
            //Gives the user the option to restart the quiz
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:  { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true,completion: nil)
        }
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer{
            ProgressHUD.showSuccess("Correct")
            score += 5
        }
        else{
            ProgressHUD.showError("Incorrect")
        }
        
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    
}
