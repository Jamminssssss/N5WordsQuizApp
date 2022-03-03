//
//  BottomText.swift
//  QuizApp
//
//  Created by jaemin park on 2022/01/23.
//

import SwiftUI

struct BottomText: View {
    let str: String
  
    
    var body: some View {
        HStack{
        Spacer()
        Text(str)
                .font(.body)
                .fontWeight(.bold)
                .padding(.all)
        Spacer()
        }.background(Color.blue.opacity(0.4))
    }
}

struct BottomText_Previews: PreviewProvider {
    static var previews: some View {
        BottomText(str: "This is Test Text")
    }
}
