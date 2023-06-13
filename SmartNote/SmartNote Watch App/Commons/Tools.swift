//
//  Tools.swift
//  SmartNote Watch App
//
//  Created by Andrea Stefanny Garcia Mejia on 10/06/23.
//

import Foundation

class Tools{
    
    //singleton: mandar a llamar metodo o clase que necesito sin instanciar en las vistas
    
    let key:String = "NoteApp"
    
    static let shared = Tools()
     
    private init(){}
    
    func save(array:[Notes]){
        let data = array.map { try? JSONEncoder().encode($0)} // PASAR DATOS A JSON
        //guardarlo con users defaults
        UserDefaults.standard.set(data, forKey: key)
    }
    func load() -> [Notes]{
         guard let savedData = UserDefaults.standard.array(forKey: key) as? [Data] else{
             return []
         }
         
         return savedData.map{try! JSONDecoder().decode(Notes.self, from: $0)}
     }
}
