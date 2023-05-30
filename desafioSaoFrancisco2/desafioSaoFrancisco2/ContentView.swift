//
//  ContentView.swift
//  desafioSaoFrancisco2
//
//  Created by Wesley Prado on 29/05/2023.
//

import SwiftUI

struct ContentView: View {
    var sectionTitle = ("Estados", "Brasil")
    var estadosDoBrasil = [ "DF":"Distrito Federal 🏢",
                            "RJ":"Rio de Janeiro 🏖️",
                            "SP":"São Paulo 🛬",
                            "MG":"Minas Gerais 🧀",
                            "SC":"Santa Catarina 🗺️"
    ]
    
    var body: some View {
        VStack {
            Group{
                List{
                    Section("\(sectionTitle.0) do \(sectionTitle.1)"){
                        ForEach(estadosDoBrasil.map{$0.value}, id: \.self){ nomeEstados in
                            Text(nomeEstados)
                                .onAppear(){
                                    print("\(nomeEstados) apareceu na tela!")
                                }
                                .onDisappear(){
                                    print("\(nomeEstados) desapareceu da tela!")
                                }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
