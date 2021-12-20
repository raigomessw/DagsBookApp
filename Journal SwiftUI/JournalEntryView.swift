//
//  JournalEntryView.swift
//  Journal SwiftUI
//
//  Created by Rai Gomes on 2021-12-17.
//

import SwiftUI

struct JournalEntryView: View {
    
   @EnvironmentObject var journal : Journal
    var entry : JournalEntry? = nil
    private let defaultContent = "Today I..."
    @Environment (\.presentationMode) var presentantionMode
    
    
    @State var content : String = ""
    
    
    
    
    var body: some View {
        VStack{
            if let entry = entry {
            Text(entry.date)
            }
      TextEditor(text: $content)
            .onTapGesture {
                clearText()
                
            }
            
        }
            .onAppear(perform: setContent)
            .navigationBarItems(trailing: Button("Save"){
                saveEntry()
                presentantionMode.wrappedValue.dismiss()
            })
    }
    
    private func setContent() {
        if let entry = entry {
            content = entry.content
          } else {
              content = defaultContent
          }
    }
    
    private func clearText() {
        
        if (entry == nil) {
        content = ""
        }
    }
    
    private func saveEntry() {
        
        if let entry = entry {
            //Uppdatera en gammal anteckning
            journal.update(entry: entry, with: content)
        }else {
        //Skapa ny dagboksantackning
        let newEntry = JournalEntry(content: content)
        journal.entries.append(newEntry)
        }
        
    }
    
}

/*struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryView()
    }
}*/
