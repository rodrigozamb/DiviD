//
//  ContentView.swift
//  DiviDApp
//
//  Created by Student25 on 18/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .onAppear(){
            viewModel.fetchUsuarios()
            viewModel.fetchGrupos()
            viewModel.fetchDespesas()
            viewModel.fetchDividas()
            
            print("USUARIOS")
            print(viewModel.usuarios)
            
//            print("GRUPOS")
//            print(viewModel.grupos)
//
//            print("DESPESAS")
//            print(viewModel.despesas)
//
//            print("DIVIDAS")
//            print(viewModel.dividas)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
