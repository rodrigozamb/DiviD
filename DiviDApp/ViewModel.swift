
import SwiftUI
import Foundation

class ViewModel: ObservableObject {
    
    @Published var usuarios: [Usuario] = []
    @Published var grupos: [Grupo] = []
    @Published var despesas: [Despesa] = []
    @Published var dividas: [Divida] = []
    
    // GET USUARIOS
    func fetchUsuarios(){
        guard let url = URL(string: "http://192.168.128.245:1880/dividusuarios") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Usuario].self, from: data)
                
                DispatchQueue.main.async {
                    self?.usuarios = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    // GET GRUPOS
    func fetchGrupos(){
        guard let url = URL(string: "http://192.168.128.245:1880/dividgrupos") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Grupo].self, from: data)
                
                DispatchQueue.main.async {
                    self?.grupos = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    // GET DESPESAS
    func fetchDespesas(){
        guard let url = URL(string: "http://192.168.128.245:1880/dividdespesas") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Despesa].self, from: data)
                
                DispatchQueue.main.async {
                    self?.despesas = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    // GET DIVIDAS
    func fetchDividas(){
        guard let url = URL(string: "http://192.168.128.245:1880/dividdividas") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Divida].self, from: data)
                
                DispatchQueue.main.async {
                    self?.dividas = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
