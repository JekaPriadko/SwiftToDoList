//
//  ProfileView.swift
//  ToDoList
//
//  Created by Jeka Priadko on 25.08.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                if let user = viewModel.user {
                    profile(user: user)
                } else{
                    Text("Profile Loading ...")
                }
    
            }
            .navigationTitle("Profile")
        } 
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile (user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 125, height: 125)
            .padding()
        
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            
            HStack {
                Text("Member since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        .padding()
        
        Button("Log out") {
            viewModel.logOut()
        }
        .tint(Color.red)
        .padding()
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}
