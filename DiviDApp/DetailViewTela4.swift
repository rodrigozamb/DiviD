//
//  DetailViewTela4.swift
//  DiviDApp
//
//  Created by Student10 on 21/08/23.
//

import SwiftUI

struct DetailViewTela4: View {
    var body: some View {
        TabView {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                                
                RoundedRectangle(cornerRadius: 25).fill(.white).frame(width: 400, height: 620).offset(x:0,y: 130)


                VStack {
                    
                    HStack{
                        
                        Spacer()
                        
                        Text("RACHA")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .padding()
                        
                        Label("", systemImage: "gearshape.fill").font(.system(size: 70))
                    }
                    
                    HStack{
                        Label("5", systemImage: "person.crop.circle.fill").font(.system(size: 35))
                        
                        Label("", systemImage: "cart.badge.questionmark").font(.system(size: 80))
                        
                        Text("15/08").font(.system(size: 20))
                    }
                                        
                    RoundedRectangle(cornerRadius: 25).fill(.gray).frame(width: 300, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25).fill(.gray).frame(width: 300, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25).fill(.gray).frame(width: 300, height: 150)
                    
                    
                    
                    Text("show")
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal).font(.system(size: 35))
                        
                        //.overlay(
                          //  RoundedRectangle(cornerRadius: 16)
                           //     .stroke(.gray, lineWidth: 40)
                        //)
                    
                    Spacer()
                    
                   
                }
                
            }//fim ZStack
        }
    }
}


struct DetailViewTela4_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewTela4()


    }
}
