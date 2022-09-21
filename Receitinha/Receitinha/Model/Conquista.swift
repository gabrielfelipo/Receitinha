//
//  Receita.swift
//  ReceitinhaTeste
//
//  Created by ditthales on 12/09/22.
//

import Foundation
import UIKit

struct Conquista{
    //Dados estáticos
    let imagem: [String]
    let nome: [String]
}

extension Conquista{
    static var desbloqueadas: [Bool] = [false, false]
    static var primeiraVez: Bool = false
    static var veioDeOnde: String = ""
}

extension Conquista{
    static func conquistas() -> [Conquista]{
        return [
            Conquista(
                imagem: [
                    "mestreBanana_bloq",
                    "mestreBanana_color"
                ],
                nome: [
                    "Bloqueada",
                    "Mestre Banana"
                ]),
            Conquista(
                imagem: [
                    "misto_bloq",
                    "misto_color"],
                nome: [
                    "Bloqueada",
                    "Esquentou!"
                ])
        ]
    }
}


