//
//  Receita.swift
//  ReceitinhaTeste
//
//  Created by ditthales on 12/09/22.
//

import Foundation

struct Receita{
    //Dados estáticos
    let precisaAuxilio: Bool
    let titulo: String
    let imagemPrevia: String
    let dificuldade: String
    let descricaoPrevia: String
    let duracao: Int
    let objetos: [String]
    let ingredientes: [String]
    let troca: Int
    //Dados que mudam por passo
    let imagem: [String]
    let tituloInstrucao: [String]
    let descricao: [String]
    let audioDescricao: [String]
}

