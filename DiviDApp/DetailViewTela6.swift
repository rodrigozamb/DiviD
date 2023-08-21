//
//  DetailViewTela6.swift
//  Projeto
//
//  Created by Student10 on 21/08/23.
//

import SwiftUI

struct DetailViewTela6: View {
    var numero : Int
    var body: some View {
        Text("Grupo \(numero)")
    }
}

struct DetailViewTela6_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewTela6(numero: 1)
    }
}
