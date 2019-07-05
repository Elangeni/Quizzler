//
//  Question.swift
//  Quizzler
//
//  Created by Elangeni  Yabba on 6/22/19.
//  Copyright © 2019 Elangeni Yabba. All rights reserved.
//

import Foundation

class Question{
    let questionText: String
    let answer: Bool
    
    //This will initialize the properties created above
    init(text: String, correct: Bool) {
        questionText = text
        answer = correct
    }
}


