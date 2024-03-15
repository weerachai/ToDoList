//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Weerachai Anotaipaiboon on 3/8/24.
//

import Foundation
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
