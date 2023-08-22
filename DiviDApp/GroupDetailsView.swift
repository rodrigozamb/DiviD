//
//  GroupDetailsView.swift
//  DiviDApp
//
//  Created by Student25 on 21/08/23.
//

import SwiftUI

struct MyVariables {
    static var selectedUsers: [FilterUsers] = [FilterUsers(user: Usuario(nome: "Rodrigo  Zamboni", email: "rodrigo@ufu.br", senha: "rodrigo123", idade: 23, cidade: "Uberlandia MG", profileURL: "AAAA"), checked: false),
                                               FilterUsers(user: Usuario(nome: "Ricardo  Zamboni", email: "rodrigo@ufu.br", senha: "rodrigo123", idade: 23, cidade: "Uberlandia MG", profileURL: "AAAA"), checked: false),
                                               FilterUsers(user: Usuario(nome: "Joao Pedro Espindola", email: "rodrigo@ufu.br", senha: "rodrigo123", idade: 23, cidade: "Uberlandia MG", profileURL: "AAAA"), checked: false),
                                               FilterUsers(user: Usuario(nome: "Otavio", email: "rodrigo@ufu.br", senha: "rodrigo123", idade: 23, cidade: "Uberlandia MG", profileURL: "AAAA"), checked: false),
                                               FilterUsers(user: Usuario(nome: "Igor", email: "rodrigo@ufu.br", senha: "rodrigo123", idade: 23, cidade: "Uberlandia MG", profileURL: "AAAA"), checked: false),
                                               FilterUsers(user: Usuario(nome: "Gabriel Thomaz", email: "rodrigo@ufu.br", senha: "rodrigo123", idade: 23, cidade: "Uberlandia MG", profileURL: "AAAA"), checked: false),
                                               FilterUsers(user: Usuario(nome: "Edilson", email: "rodrigo@ufu.br", senha: "rodrigo123", idade: 23, cidade: "Uberlandia MG", profileURL: "AAAA"), checked: false)
                                              ]
}

struct FilterUsers: Hashable {
    var user: Usuario
    var checked: Bool
}


struct GroupDetailsView: View {
    @State var nomeDespesa = ""
    @State var valorDespesa = ""
    @State var contador = 0
    var body: some View {
        
        NavigationStack{
            
            VStack{
                VStack{
                    
                    VStack{
                        Text("NOVA DESPESA")
                            .font(.system(size: 32, weight: .bold))
                            .padding()
                        
                        TextField("Nome", text: $nomeDespesa)
                            .multilineTextAlignment(.center)
                            .frame(width: 300, height: 40)
                            .background( Color("inputBG"))
                            .cornerRadius(5)
                            .padding()
                        
                        TextField("Valor", text: $valorDespesa)
                            .multilineTextAlignment(.center)
                            .frame(width: 300, height: 40)
                            .background( Color("inputBG"))
                            .cornerRadius(5)
                    }
                    
                    VStack{
                        Text("PARTICIPANTES")
                            .font(.system(size: 32, weight: .bold))
                            .padding()
                        Text("\(contador)/\(MyVariables.selectedUsers.count)")
                        
                    }
                    
                    
                    VStack{
                        
                        ScrollView(.vertical){
                            ForEach(Array(MyVariables.selectedUsers.enumerated()), id: \.offset) { index, integrante in
                                
                                
                                
                                HStack{
                                    Text(integrante.user.nome)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                    
                                    
                                    ZStack{
                                        Circle()
                                            .stroke( MyVariables.selectedUsers[index].checked ? Color("green") : Color.gray, lineWidth: 1)
                                            .frame(width: 25, height: 25)
                                        
                                        
                                        if MyVariables.selectedUsers[index].checked {
                                            Image(systemName: "checkmark.circle.fill")
                                                .font(.system(size: 25))
                                                .foregroundColor(.green)
                                        }
                                    }
                                }
                                .padding(.horizontal)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    MyVariables.selectedUsers[index].checked.toggle()
                                    if MyVariables.selectedUsers[index].checked{
                                        contador = contador + 1
                                    }else {
                                        contador = contador - 1
                                    }
                                        print(MyVariables.selectedUsers[index])
                                        print(MyVariables.selectedUsers[index].checked)
                                    }
                                
                                
                                   
                            }
                        }
                        
                        
                    }
                    
                    Spacer()
                    Button("Criar"){
                        print(MyVariables.selectedUsers)
                        // aqui iremos fazer a requisicao de criacao de uma nova despesa
                    }
                    .frame(width: 150, height: 50)
                    .padding()
                    .background(Color("GalaxyBlue"))
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(14)

                    
                    
                    Spacer()
                }

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
            .accentColor(Color.black)
            .background(Color.white)
            
        }

        
    }
}



struct GroupDetailsView_Previews: PreviewProvider {

    static var previews: some View {
        GroupDetailsView()
    }
}
