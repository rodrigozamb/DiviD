//
//  APIModels.swift
//  DiviDApp
//
//  Created by Student25 on 21/08/23.
//

import Foundation

struct usuario: Codable, Hashable, Identifiable{
    let id: String
    let nome: String
    let email: String
    let senha: String
    let idade: Int
}

struct divida: Codable, Hashable, Identifiable{
    let id: String
    let userID: String
    let despesaID: String
    let valor: Double
    let status: Bool
}

struct despesa: Codable, Hashable, Identifiable{
    let id: String
    let nome: String
    let donoID: String
    let created_at: Date
}

struct grupo: Codable, Hashable, Identifiable{
    let id: String
    let nome: String
    let integrantes: [String]
    let despesas: [String]
    let created_at: Date
}   

