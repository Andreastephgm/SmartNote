//
//  ListNotes.swift
//  SmartNote Watch App
//
//  Created by Andrea Stefanny Garcia Mejia on 8/06/23.
//

import SwiftUI

struct ListNotes: View {
    
@State private var note = [Notes]()
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Notes! 🗒️ ").font(.system(size: 25)).foregroundColor(.green)
                    Text("\(note.count)").font(.system(size: 25)).foregroundColor(Color("watchColor"))
                }
                List{
                    ForEach(0..<note.count, id: \.self) { i in
                        NavigationLink(destination: detailNotes(note: note[i]),
                                       label: {
                            Text("\(note[i].title)").lineLimit(1)
                            
                        })
                        
                    }.onDelete(perform: delete )
                }.frame(width: 160).padding(EdgeInsets(top: 5, leading: 5, bottom: 1, trailing: 5))
            }.onAppear(perform: {
                note = Tools.shared.load()
            })
        }
       
    }
    func delete(offsets: IndexSet){
        withAnimation {
            note.remove(atOffsets: offsets)
        }
        Tools.shared.save(array: note)
   }

}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
