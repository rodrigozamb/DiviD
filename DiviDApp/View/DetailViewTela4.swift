//
////  DetailViewTela4.swift
////  Projeto
////
////  Created by Student10 on 21/08/23.
////
//
//
//import SwiftUI
//struct DetailViewTela4: View {
//    let ids = [1, 2, 3 , 4, 5,6,7,8,9] // Seus IDs aqui
//    
//    let grupos : [Grupo] = [
//        Grupo(nome: "Aluguel Bola", integrantes: [Usuario(nome: "Rodrigo", email:"rodrigo@gmail.com", senha:"***", idade:20),
//                                                  Usuario(nome: "Otavio", email:"rodrigo@gmail.com", senha:"***", idade:20),
//                                                  
//                                                  Usuario(nome: "Guilherme", email:"rodrigo@gmail.com", senha:"***", idade:20)], despesas: [], created_at: "hoje"),
//        
//        Grupo(nome: "Show", integrantes: [Usuario(nome: "Joao Pedro", email:"rodrigo@gmail.com", senha:"***", idade:20)], despesas: [], created_at: "hoje"),
//        
//        Grupo(nome: "Grupo X", integrantes: [], despesas: [], created_at: "hoje")]
//    
//    var body: some View {
//        TabView {
//            NavigationStack{
//                ZStack {
//                    
//                    LinearGradient(gradient: Gradient(colors: [.blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
//                    RoundedRectangle(cornerRadius: 25).fill(.white).frame(width: 400, height: 500).offset(x:0,y: 145)
//                    
//                    VStack {
//                        HStack {
//                            Spacer()
//                            Text("RACHA")
//                                .font(.system(size: 35))
//                                .fontWeight(.bold)
//                                .padding()
//                            Label("", systemImage: "gearshape.fill").font(.system(size: 40))
//                        }
//                        HStack {
//                            Label("5", systemImage: "person.crop.circle.fill").font(.system(size: 35))
//                            
//                            Label("", systemImage: "cart.badge.questionmark").font(.system(size: 80))
//                            Text("15/08").font(.system(size: 20))
//                        }
//                        ScrollView {
//                            VStack{
//                                ForEach(grupos, id: \.self) { grupo in
//                                    
//                                    NavigationLink(destination: DetailViewTela6(nome: grupo)) {
//                                        
//                                        VStack{
//                                            Text("\(grupo.nome)").font(.system(size: 30))
//                                            
//                                            HStack{
//                                                Text("Algum Valor \(grupo.nome)")
//
//                                                //Text("Algum Valor \(grupo.integrantes.Usuario.nome)")
//                                                Spacer()
//                                                Text("Outro Valor \(grupo.nome)")
//                                            }//Fim HStack
//                                        } //Fim VStack
//                                        
//                                    }// Fim NavigationLink
//                                    
//                                }//Fim ForEach
//                                .frame(width: 300, height: 150).foregroundColor(.black)
//                                .background{Color.gray}.cornerRadius(25)
//                                
//                            }  //Fim VStack ScrollView
//                        } // Fim ScrollView
//                    } // FIM VStack Principal
//                    //Spacer()
//                } // FIM ZStack
//                
//            } //FIM NavigationStack
//            } //FIM TabView
//        }
//    }
//
//struct DetailViewTela4_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailViewTela4()
//    }
//}
