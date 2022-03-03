//
//  WelcomeView.swift
//  QuizApp
//
//  Created by jaemin park on 2022/01/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            ZStack {
                GameColor.main.ignoresSafeArea()
            VStack {
                    Text("✏️Jlpt N5 words Quiz📚")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding()
                    Text("Select the correct answer to each of the following questions.")
                        .font(.title2)
                        .padding()
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label:{
                            BottomText(str: "Start")
                                .padding(.bottom)
                        })
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
