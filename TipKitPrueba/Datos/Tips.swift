//
//  Tips.swift
//  TipKitPrueba
//
//  Created by Paul F on 07/10/24.
//

import Foundation
import TipKit

//Vid 464
struct TipUno: Tip {
    var title: Text {
        Text("Crear notas")
    }
    
    var message: Text? {
        Text("Comienza a escribir notas")
    }
    
    var image: Image? {
        Image(systemName: "note")
    }
    
    //Vid 465
    var actions: [Action] {
        [
            Tip.Action(id:"vermas",title:"Ver mas...")
        ]
    }
    
}

//Vid 466
struct TipDos: Tip {
    
    static var entrada: Event = Event(id: "form")
    
    var title: Text {
        Text("Formulario de notas")
    }
    
    var message: Text? {
        Text("Desde aqui comienza a crear tus notas")
    }
    
    var image: Image? {
        Image(systemName: "pencil.and.scribble")
    }
    
    var rules: [Rule] {
        return [
            //Programacion declarativa  $0.donations.count >= 3 
            #Rule(Self.entrada) { $0.donations.count >= 3 }
        ]
    }
    
}

//Vid 467 
struct TipTres: Tip {
    
   @Parameter()
    static var showTip : Bool = false
    
    var title: Text {
        Text("Genial!!!")
    }
    
    var message: Text? {
        Text("Bien hecho haz guardado tu primer nota, sigue asi")
    }
    
    var image: Image? {
        Image(systemName: "pencil.and.scribble")
    }
    
    var rules: [Rule] {
        return [
            #Rule(Self.$showTip) { $0 == true }
        ]
    }
    
}
