//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Elangeni  Yabba on 6/22/19.
//  Copyright © 2019 Elangeni Yabba. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    //Fill array with content
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correct: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "A slug\'s blood is green.", correct: true))
        
        list.append(Question(text: "Approximately one quarter of human bones are in the feet.", correct: true))
        
        list.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correct: true))
        
        list.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correct: true))
        
        list.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correct: false))
        
        list.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correct: true))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correct: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correct: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correct: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correct: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correct: false))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correct: true))
    }
}
