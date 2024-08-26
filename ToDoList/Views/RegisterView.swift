//
//  RegisterView.swift
//  ToDoList
//
//  Created by Jeka Priadko on 25.08.2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       bgColor: Color.orange)
            Form {
                TextField("Full name", text:$viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email address", text:$viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text:$viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Register", bgColor: Color.orange){
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
