//
//  DetailViewTela4.swift
//  Projeto
//
//  Created by Student10 on 21/08/23.
//

import SwiftUI
struct DetailViewTela4: View {
    let ids = [1, 2, 3 , 4, 5,6,7,8,9] // Seus IDs aqui
    var body: some View {
        TabView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [.blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                RoundedRectangle(cornerRadius: 25).fill(.white).frame(width: 400, height: 620).offset(x:0,y: 145)
                
                VStack {
                    HStack {
                        Spacer()
                        Text("RACHA")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .padding()
                        Label("", systemImage: "gearshape.fill").font(.system(size: 70))
                    }
                    HStack {
                        Label("5", systemImage: "person.crop.circle.fill").font(.system(size: 35))
  
                        Label("", systemImage: "cart.badge.questionmark").font(.system(size: 80))
                        Text("15/08").font(.system(size: 20))
                    }
                    ScrollView {
                        VStack{
                            ForEach(ids, id: \.self) { id in
                                
                                NavigationLink(destination: DetailViewTela5()) {
                                    
                                    VStack{
                                        Text("Texto do retângulo \(id)")
                                        
                                        HStack{
                                            Text("Algum Valor \(id)")
                                            Spacer()
                                            Text("Outro Valor \(id)")
                                        }//Fim HStack
                                    } //Fim VStack
                                    
                                }// Fim NavigationLink
                                
                                }//Fim ForEach
                                .frame(width: 300, height: 150).foregroundColor(.black)
                                .background{Color.gray}.cornerRadius(25)
                                
                            }  //Fim VStack ScrollView
                        } // Fim ScrollView
                    } // FIM VStack Principal
                    //Spacer()
                } // FIM ZStack
            } //FIM TabView
        }
    }

struct DetailViewTela4_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewTela4()
    }
}



