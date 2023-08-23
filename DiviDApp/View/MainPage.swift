//
//  MainPage.swift
//  DiviDApp
//
//  Created by Student14 on 22/08/23.
//

import SwiftUI

struct MainPage: View {
    // Tab atual
    @State var currentTab: Tab = .Home
    
    // Escondendo tab
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        VStack(spacing: 0){

            // Tab View...
            TabView(selection: $currentTab) {
                Home()
                    .tag(Tab.Home)
//                Button(action:  {}, label: {
//                        Image(systemName: "plus")
//                        .font(.title2)
//                        .foregroundColor(.white)
//                        .padding(20)
//                        .background(Color("Purple"))
//                        .clipShape(Circle())
//                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
//                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
//                })
//                .offset(y: -30)
                NewGroupPage(nomeNovosParticipante:[])
                    .tag(Tab.Add)
                 ProfilePage()
                    .tag(Tab.Profile)
            }
            
            // Tab bar personalizada
            HStack(spacing: 0){
                ForEach(Tab.allCases,id: \.self){tab in
                    
                    Button {
                        // Atualizando tab
                        currentTab = tab
                    } label: {
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                        // Aplicando pequena sombra no fundo
                            .background(
                                Color("Purple")
                                    .opacity(0.1)
                                    .cornerRadius(5)
                                // Borrando
                                    .blur(radius: 5)
                                // Aumentando
                                    .padding(-7)
                                    .opacity(currentTab == tab ? 1 : 0)
                            )
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? Color("Purple") : Color.black.opacity(0.3))
                    }
                }
            }
            .padding([.horizontal,.top])
            .padding(.bottom,10)
        }
        .background(Color("HomeBG").ignoresSafeArea())
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

// Cases iteraveis
// Casos (cases) de tabs
enum Tab: String, CaseIterable{
    // Valor raw deve ser o mesmo que os nomes no asset
    case Home = "Home"
    case Add = "Add"
    case Profile = "Profile"
}
