//
//  GameViewModel.swift
//  QuizApp
//
//  Created by jaemin park on 2022/01/24.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published var game = Game()

    var questionText: String {
        game.currentQuestion.questionText
    }

    var answerIndices: Range<Int> {
        game.currentQuestion.possibleAnswers
            .indices
    }
    
    var correctAnswerIndex: Int{
        game.currentQuestion.correctAnswerIndex
    }
    
    var progressText: String{
        "Question \(game.currentQuestionIndex + 1)/ \(game.quetionCount)"
    }
    
    var selectionWasMade: Bool {
        game.seletions[game.currentQuestion] != nil
    }
    var selectionCount:(Int, Int){
        game.selectionCount
    }
    
    var gameIsover: Bool {
        game.gameIsOver
    }
    
    var gameStartTime: Date {
        game.startTime
    }
    
    
    func answerText(for index: Int) -> String {
        game.currentQuestion.possibleAnswers [index]
    }
    
    func advanceGameState() {
        game.advanceGameState()
    }
    func makeSelectionForCurrentQuestion(at index: Int){
        game.makeSelection(at: index)
    }
    
    func colorForButton(at buttonindex: Int) -> Color {
        guard let selectedIndex = game.seletions[game.currentQuestion], selectedIndex == buttonindex else { return .clear }
        if selectedIndex == correctAnswerIndex {
            return .green
        } else {
            return .red
        }
     }
}

