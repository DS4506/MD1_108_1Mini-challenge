//
//  NotesView.swift
//  MD1_108_1Mini challenge
//
//  Created by Willie Earl on 9/8/25.
//

import SwiftUI

struct NotesView: View {
    
    struct Note: Identifiable, Codable {
        var id: UUID = UUID()
        
        let text: String
        var createdAt: Date = Date()
    }

    @State private var notes: [Note] = []
    @State private var newNote: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter note", text: $newNote)
            
            Button("Add note"){
                let note = Note(text: newNote)
                // save
                notes.append(note)
                newNote = ""
            }
            
            List {
                ForEach(notes) { note in
                    Text(note.text)
                    
                    Text(note.createdAt.formatted())
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

#Preview{
    NotesView()
}
