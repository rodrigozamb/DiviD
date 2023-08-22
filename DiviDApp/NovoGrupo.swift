//
//  NovoGrupo.swift
//  DiviDApp
//
//  Created by Student15 on 21/08/23.
//

import SwiftUI

struct NovoGrupo: View {
    @State private var nomeGrupo: String = ""
    @State private var nomeParticipante: String = ""
    @State var nomeNovosParticipante: [String]
    var body: some View {
        ZStack{
            Color("HomeBG")
                .ignoresSafeArea()
            
            VStack{
                Text("NOVO GRUPO")
                    .font(.custom("Lato-Bold", size: 30))
                    .foregroundColor(.black)
                    .padding()
                TextField("Digite o nome do grupo", text: $nomeGrupo)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    
                
                Text("PARTICIPANTES")
                    .foregroundColor(.black)
                    .font(.custom("Lato-Bold", size: 25))
                    .padding()
                ZStack{
                    TextField("Nome do participante que quer adicionar", text: $nomeParticipante)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    Image(systemName: "paperplane.fill")
                        .offset(x:160)
                        .onTapGesture {
                            //logica para adicionar o participante
                            nomeNovosParticipante.append(nomeParticipante)
                        }
                }
                Spacer(minLength: 50)
                ZStack{
                    
                    ScrollView{
                        
                        //for para percorrer o array de membros do grupo
                        HStack{
                            ForEach(nomeNovosParticipante, id: \.self){
                                nomeDaVez in
                                HStack{
                                    Text(nomeDaVez)
                                        .font(.custom("Lato-Bold", size: 25))
                                        .frame(width:350)
                                }
                            }
                        }
                    }.background(Color.white)
                        .cornerRadius(30)
                        .padding()
                    
                }
                Button("Criar") {
                    //Logica de criacao do grupo
                }.foregroundColor(Color.white)
                    .cornerRadius(30)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("GalaxyBlue"))
                    .controlSize(.large)
                    .font(.custom("Lato-Bold", size: 20))
                
            }
        }
    }
}

struct NovoGrupo_Previews: PreviewProvider {
    static var previews: some View {
        NovoGrupo(["joao", "jose"])
    }
}


