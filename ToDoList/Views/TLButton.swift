//
//  TLButton.swift
//  ToDoList
//
//  Created by Jeka Priadko on 26.08.2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let bgColor: Color
    let action: () -> Void
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(bgColor)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "title", bgColor: Color.blue){
//        Action
    }
}
