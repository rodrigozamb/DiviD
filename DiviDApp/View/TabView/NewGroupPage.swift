import SwiftUI

struct NewGroupPage: View {
    @State private var nomeGrupo: String = ""
    @State private var nomeParticipante: String = ""
    @State var nomeNovosParticipante: [String]
    @State private var showAlert = false

    var body: some View {
        ZStack {
            Color("HomeBG")
                .ignoresSafeArea()
            
            VStack {
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
                ZStack {
                    TextField("Nome do participante que quer adicionar", text: $nomeParticipante)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .onSubmit {
                            addParticipant()
                        }
                    
                    Image(systemName: "paperplane.fill")
                        .offset(x: 160)
                        .onTapGesture {
                            addParticipant()
                        }
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Nome Inválido!"),
                        message: Text("Por favor entre com um nome válido contendo apenas letras e espaços."),
                        dismissButton: .default(Text("OK"))
                    )
                }
                Spacer(minLength: 50)
                ZStack {
                    ScrollView {
                        VStack {
                            ForEach(nomeNovosParticipante.indices, id: \.self) { index in
                                HStack {
                                    Text(nomeNovosParticipante[index])
                                        .font(.custom("Lato-Bold", size: 16))
                                        .frame(width: 250, alignment: .center)
                                    
                                    Button(action: {
                                        nomeNovosParticipante.remove(at: index)
                                    }) {
                                        Image(systemName: "minus.circle")
                                            .foregroundColor(.red)
                                            .offset(x: -10)
                                    }
                                }
                            }
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding()
                }
                Button("Criar") {
                    // Logica de criacao do grupo
                }
                .foregroundColor(Color.white)
                .cornerRadius(30)
                .buttonStyle(.borderedProminent)
                .tint(Color("Purple"))
                .controlSize(.large)
                .font(.custom("Lato-Bold", size: 20))
            }
        }
    }
    
    private func addParticipant() {
        let nameRegex = "^[a-zA-Z ]+$"
        let nameTest = NSPredicate(format: "SELF MATCHES %@", nameRegex)
        if nameTest.evaluate(with: nomeParticipante) {
            nomeNovosParticipante.append(nomeParticipante)
            nomeParticipante = ""
        } else {
            showAlert = true
        }
    }
}

struct NewGroupPage_Previews: PreviewProvider {
    static var previews: some View {
        NewGroupPage(nomeNovosParticipante: [])
    }
}

