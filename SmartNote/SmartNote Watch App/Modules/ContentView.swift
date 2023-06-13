//
//  ContentView.swift
//  SmartNote Watch App
//
//  Created by Andrea Stefanny Garcia Mejia on 6/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack{
                NavigationStack{
                    Text("Smart Note!").foregroundColor(Color("watchColor")).font(.system(size: 18)).bold()
                    
                    NavigationLink("Add Note +", destination: addNote()).font(.system(size: 16)).foregroundColor(.green).frame(width: 160)
                    
                    NavigationLink("List Notes 💭", destination: ListNotes()).font(.system(size: 16)).foregroundColor(.green).frame(width: 160)
                    Spacer(minLength: 9)
                    
                }.padding(EdgeInsets(top: 5, leading: 5, bottom: 1, trailing: 5))
            }.background(Color("watchColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
