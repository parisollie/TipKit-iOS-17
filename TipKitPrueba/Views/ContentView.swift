//
//  ContentView.swift
//  TipKitPrueba
//
//  Created by Paul F on 07/10/24.
//

import SwiftUI
import TipKit

struct ContentView: View {
    //Vid 465
    @State private var show = false
    
    var body: some View {
        //Vid 464
        NavigationStack{
            VStack {
                Button {
                    //Vid 465
                    show.toggle()
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.title)
                        .foregroundStyle(.black)
                }
                Text("Agregar nueva nota")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                //Vid 464
                    .popoverTip(TipUno(), arrowEdge: .top) { _ in
                        //Vid 465,ponemos la accion
                        show.toggle()
                    }

            }
            .padding()
            .navigationTitle("Bienvenidos")
            //Vid 465
            .popover(isPresented: $show, content: {
                FormView()
            })
        }.onAppear{
            //Vid 466
            try? Tips.resetDatastore()
        }
    }
}

#Preview{
    ContentView()
}

