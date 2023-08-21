//
//  APIModels.swift
//  DiviDApp
//
//  Created by Student25 on 21/08/23.
//

import Foundation

struct Usuario: Codable, Hashable{
    let nome: String?
    let email: String?
    let senha: String?
    let idade: Int?
    let cidade: String?
    let profileURL: String?
}

struct Divida: Codable, Hashable{
    let userID: String?
    let despesaID: String?
    let valor: Double?
    let status: Bool?
    let cidade: String?
    let profileURL: String?
}

struct Despesa: Codable, Hashable{
    let nome: String?
    let donoID: String?
    let created_at: Date?
}

struct Grupo: Codable, Hashable{
    let nome: String?
    let integrantes: [Usuario]?
    let despesas: [Despesa]?
    let idade: Int?
    let cidade: String?
    let profileURL: String?
}   
