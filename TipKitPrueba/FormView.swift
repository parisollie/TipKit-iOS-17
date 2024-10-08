//
//  FormView.swift
//  TipKitPrueba
//
//  Created by Paul F on 07/10/24.
//

import SwiftUI
import TipKit
//Vid 465
struct FormView: View {
    var body: some View {
        VStack{
            //Vid 466
            Text("Formulario")
                .popoverTip(TipDos(), arrowEdge: .bottom)
            //Vid 467
            Button {
                TipTres.showTip = true
            } label: {
                Text("Guardar")
            }
            //Vid 466
            TipView(TipTres())
                

            
        }.padding()
            .onAppear{
                Task {
                    //Vid 466
                    await TipDos.entrada.donate()
                }
            }
    }
}
