//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Jeka Priadko on 25.08.2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
