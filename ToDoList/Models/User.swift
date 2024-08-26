//
//  User.swift
//  ToDoList
//
//  Created by Jeka Priadko on 25.08.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
