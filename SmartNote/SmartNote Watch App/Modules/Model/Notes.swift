//
//  Notes.swift
//  SmartNote Watch App
//
//  Created by Andrea Stefanny Garcia Mejia on 6/06/23.
//

import SwiftUI

struct Notes: Codable, Identifiable{
    var id: UUID
    
    
    var title: String
    var creationDate: String
    
    init(title: String){
        self.id = UUID()
        self.title = title
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        
        self.creationDate = dateFormatter.string(from: date)
        
    }
}
