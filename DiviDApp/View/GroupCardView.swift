//
//  GroupCardView.swift
//  DiviDApp
//
//  Created by Student14 on 23/08/23.
//

import SwiftUI

struct GroupCardView: View {
    @Binding var grupo: Grupo
    let cardColors: [Color] = [
        Color("Purple"),
        Color("Red"),
        Color("Blue"),
        Color("Green"),
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 12) {
                    Text(grupo.created_at)
                        .font(.caption)
                    Text(grupo.nome)
                        .font(.title2.bold())
                    Text("\(grupo.integrantes.count) Integrantes")
                        .font(.caption)
                }
                Spacer(minLength: 0)
                // ... (your existing code for the toggle)
            }
            .foregroundColor(textColor(for: randomCardColor()))
            
            HStack(spacing: -12) {
                ForEach(1...3, id: \.self) { index in
                    // ... (your existing code for the animoji images)
                }
                Spacer(minLength: 15)
                Button {
                    // ... (your existing code for the button action)
                } label: {
                    Text("Join")
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                .tint(.white)
                .shadow(radius: 1.2)
            }
            .padding(.top, 20)
        }
        .padding()
        .background(randomCardColor(), in: RoundedRectangle(cornerRadius: 10))
    }
    
    func randomCardColor() -> Color {
        let randomColor = cardColors.randomElement() ?? .black
        return randomColor
    }
    
    // Determine appropriate text color based on background color's brightness
    func textColor(for backgroundColor: Color) -> Color {
        let backgroundColorComponents = UIColor(backgroundColor).cgColor.components ?? [0, 0, 0]
        let brightness = (0.299 * backgroundColorComponents[0] + 0.587 * backgroundColorComponents[1] + 0.114 * backgroundColorComponents[2])
        return brightness > 0.5 ? .black : .white
    }
}

//struct GroupCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        // You need to provide a Binding<Grupo> here based on your data
//        // For the preview, you can use a placeholder instance of Grupo
//        GroupCardView(grupo: .constant(Grupo()))
//    }
//}

