//
//  Game.swift
//  QuizApp
//
//  Created by jaemin park on 2022/01/24.
//

import Foundation
import CoreImage

struct Game {
    
    //MARK: - Private Properties
    
    var startTime = Date()
    
    private let questions = Question.allQuestions.shuffled()
 
    private(set) var currentQuestionIndex = 0
    
    private(set) var seletions = [Question: Int]()
    
    var gameIsOver = false
    
    //MARK - Internal Methods and Properties
    
    var selectionCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0,0)
        for (question, selectedIndex) in seletions {
            if selectedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
    }
       return count
}
    
    var quetionCount: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
        
    mutating func advanceGameState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        if !questions.indices.contains(nextQuestionIndex) {
            gameIsOver = true
            print("Game over!")
        } else {
        currentQuestionIndex = nextQuestionIndex
    }
}
    mutating func makeSelection(at index:Int) {
        seletions[currentQuestion] = index
    }
}
