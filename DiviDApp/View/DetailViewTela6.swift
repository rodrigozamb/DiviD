//
////  DetailViewTela6.swift
////  Projeto
////
////  Created by Student10 on 21/08/23.
////
//
//import SwiftUI
//
//struct DetailViewTela6: View {
//    
//    @State private var atualizarPressed = false
//    @State private var checkedMembers: Set<String> = [] // Para rastrear os integrantes selecionados
//    var nome : Grupo
//    
//    var body: some View {
//        
//        VStack{
//            Text("\(nome.nome)").font(.system(size: 45))
//            
//            if let primeiroIntegrante = nome.integrantes.first{
//                Text("\n\n\n")
//                Text("Criado por: \(primeiroIntegrante.nome)").font(.system(size: 30))
//            }
//            
//            Text("\n\n\n")
//            Text("Participantes:").font(.system(size: 30))
//            
//            ScrollView{
//                ForEach(nome.integrantes, id: \.self){
//                    integrante in
//                    
//                    HStack{
//                        Spacer()
//                        Text(integrante.nome)
//                        Spacer()
//                        if !atualizarPressed{
//                            Text("dinheiro")
//                        }
//                        
//                        Button {
//                            
//                            if checkedMembers.contains(integrante.nome) {
//                                checkedMembers.remove(integrante.nome)
//                                
//                            } else {
//                                    checkedMembers.insert(integrante.nome)
//                                }
//                        }label: {
//                            Image(systemName: checkedMembers.contains(integrante.nome) ? "checkmark.circle.fill" : "circle").font(.system(size: 25))
//                        } // FIM label
//                    } // Fim HStack
//                    
//                    //Button {
//                        
//                    //}
//                    
//                } //.padding(.horizontal)
//                
//                Button("Atualizar"){
//                    atualizarPressed = true
//                } //Fim Botao Atualizar
//            } // FIM ScroolView
//        } // FIM VStack
//    }
//}
//
//struct DetailViewTela6_Previews: PreviewProvider {
//    static var previews: some View {
//        let sampleGrupo = Grupo(nome: "Aluguel Bola", integrantes: [Usuario(nome: "Rodrigo", email:"rodrigo@gmail.com", senha:"***", idade:20),
//                                                                    Usuario(nome: "Otavio", email:"rodrigo@gmail.com", senha:"***", idade:20),
//                                                                    Usuario(nome: "Guilherme", email:"rodrigo@gmail.com", senha:"***", idade:20)], despesas: [], created_at: Date())
//        return DetailViewTela6(nome: sampleGrupo)
//    }
//}
