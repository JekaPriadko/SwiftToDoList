//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Jeka Priadko on 25.08.2024.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
