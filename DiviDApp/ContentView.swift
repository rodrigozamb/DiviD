//
//  ContentView.swift
//  DiviDApp
//
//  Created by Student25 on 18/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            OnBoardingPage()
        }
        .onAppear{
            for family in UIFont.familyNames.sorted() {
                let names = UIFont.fontNames(forFamilyName: family)
                print("Family: \(family) Font names: \(names)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
