//
//  LoginView.swift
//  ToDoList
//
//  Created by Jeka Priadko on 25.08.2024.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                HeaderView(title: "To Do List", 
                           subtitle: "Get thinks done",
                           angle: 15,
                           bgColor: Color.teal)
                
                // Login Form
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundColor(Color.red)
                    }
                    
                    TextField("Email address", text:$viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text:$viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                  
                    TLButton(title: "Log In", bgColor: Color.teal){
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                //        Create accountP
                VStack{
                    Text("New arround here?")
                    
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
