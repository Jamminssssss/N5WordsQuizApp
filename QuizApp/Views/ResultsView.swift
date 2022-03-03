//
//  ResultsView.swift
//  QuizApp
//
//  Created by jaemin park on 2022/01/26.
//

import SwiftUI

struct ResultsView: View {
    let viewModel: ResultssViewModel
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Text("Final Score: ")
                    Text(viewModel.finalPercentText)
                }
                .font(.title)
                .padding()
                HStack {
                    Text("Letter Grade: ")
                    Text(viewModel.letterGradeText)
                }
                    .padding()
                    .font(.title)
                Text(viewModel.correctSelectionText)
                    .font(.system(size:30))
                Text(viewModel.incorrectSelectionText)
                    .font(.system(size:30))
                Text("Total time:\(viewModel.TotalGameTimeText)")
            Spacer()
                NavigationLink(destination: GameView(),
                               label: {
                    BottomText(str: "Restart")
                        .padding(.bottom)
                })
            }
        }
        .navigationBarHidden(true)
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ResultsView(viewModel: ResultssViewModel(selectionCount: (3,1), gameStartTime: Date(), gameEndTime: Date()))
        }
    }
}
