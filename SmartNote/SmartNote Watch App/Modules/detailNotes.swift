//
//  detailNotes.swift
//  SmartNote Watch App
//
//  Created by Andrea Stefanny Garcia Mejia on 8/06/23.
//

import SwiftUI

struct detailNotes: View {
    
    let note: Notes
    
    var body: some View {
        VStack{
            Text(note.title).font(.system(size: 40.0)).foregroundColor(.green)
            Spacer()
            Text(note.creationDate).font(.system(size: 10.0)).foregroundColor(.white).bold()
        }
    }
}

struct detailNotes_Previews: PreviewProvider {
    static var previews: some View {
        detailNotes(note: Notes(title: "Hello Note!!!"))
    }
}
