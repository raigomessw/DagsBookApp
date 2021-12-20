//
//  Journal_SwiftUIApp.swift
//  Journal SwiftUI
//
//  Created by Rai Gomes on 2021-12-17.
//

import SwiftUI

@main
struct Journal_SwiftUIApp: App {
    @StateObject var journal = Journal()
    
    @State var showInfo : Bool = false
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(journal)
        }
    }
}
