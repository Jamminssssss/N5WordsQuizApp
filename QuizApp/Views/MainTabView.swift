//
//  MainTabView.swift
//  QuizApp
//
//  Created by jaemin park on 2022/01/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            WelcomeView()
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}


