//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Jeka Priadko on 25.08.2024.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewViewModel: ObservableObject{
    init(){ }
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
