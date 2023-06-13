//
//  addNote.swift
//  SmartNote Watch App
//
//  Created by Andrea Stefanny Garcia Mejia on 8/06/23.
//

import SwiftUI

struct addNote: View {
    @State  private var text = ""
    @State private var note = [Notes]()
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
            VStack{
                Text("New Note!").foregroundColor(.green).font(.system(size: 20)).bold()
                Spacer()
                TextField("Nota", text: $text).foregroundColor(.green).frame(width: 180).font(.system(size: 15))
                Button("Add Note!") {
                    guard text.isEmpty == false else{
                        return
                    }
                    let noteSaved = Notes(title: text)
                    note.append(noteSaved)
                    Tools.shared.save(array: note)
                    text = ""
                    presentation.wrappedValue.dismiss()
                    
                }.foregroundColor(Color("watchColor")).bold().frame(width: 180).font(.system(size: 15))
            }.onAppear(perform: {
                note = Tools.shared.load()
            }).padding(EdgeInsets(top: 5, leading: 5, bottom: 15, trailing: 5))
    }
}

struct addNote_Previews: PreviewProvider {
    static var previews: some View {
        addNote()
    }
}
