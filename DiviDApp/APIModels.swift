//
//  APIModels.swift
//  DiviDApp
//
//  Created by Student25 on 21/08/23.
//

import Foundation

struct usuario: Codable, Hashable{
    let nome: String
    let email: String
    let senha: String
    let idade: Int
}

struct divida: Codable, Hashable{
    let userID: String
    let despesaID: String
    let valor: Double
    let status: Bool
}

struct despesa: Codable, Hashable{
    let nome: String
    let donoID: String
    let created_at: Date
}

struct grupo: Codable, Hashable{
    let nome: String
    let integrantes: [usuario]
    let despesas: [despesa]
    let created_at: Date
}   

