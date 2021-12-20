//
//  JournalEntry.swift
//  Journal SwiftUI
//
//  Created by Rai Gomes on 2021-12-17.
//

import Foundation

struct JournalEntry : Identifiable, Equatable {
    
    var id = UUID()
    private let dateFormatter = DateFormatter()
    
    var content : String
    var unformatedDate : Date = Date()// Date () Pega a Data atual
    
    
    var date : String {
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: unformatedDate)
    }
    
    //static func == (lhs: JournalEntry, rhs: JournalEntry) -> Bool {
    //  return lhs.id == rhs.id && lhs.content == rhs.content
    //}
    
}
