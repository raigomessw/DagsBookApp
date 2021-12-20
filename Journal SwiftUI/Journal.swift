//
//  Journal.swift
//  Journal SwiftUI
//
//  Created by Rai Gomes on 2021-12-17.
//

import Foundation

class Journal : ObservableObject {
   @Published var entries = [JournalEntry]()
    
    
    init () {
        addMockData()
        
        
        
    }
    
    func update (entry: JournalEntry, with content: String) {
        if let index = entries.firstIndex(of: entry) {
            //let oldEntry = entries[index]
            //let newEntry = JournalEntry(id: oldEntry.id, content: content, date: oldEntry.date)
            
            //entries[index] = newEntry
            
            
            entries[index].content = content
            //print("Uppdatera: \(entries[index].content)")
            
        }
            
        
    }
    
    func addMockData () {
        entries.append(JournalEntry(content: "Dag 1"))
        entries.append(JournalEntry(content: "Jag åt mat"))
        entries.append(JournalEntry(content: "Sov mest"))
        entries.append(JournalEntry(content: "Jobbade hårt"))
        entries.append(JournalEntry(content: "Programmerade hela dagen"))
    }
    
}
