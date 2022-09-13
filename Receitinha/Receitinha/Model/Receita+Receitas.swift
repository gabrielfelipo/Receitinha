//
//  Receita+Receitas.swift
//  Receitinha
//
//  Created by lss8 on 12/09/22.
//

import Foundation

extension Receita {
    static func receitas() -> [Receita] {
        return [
            Receita(
                titulo: "Banana com Nescau",
                imagemPrevia: "imagem da previa aqui",
                dificuldade: "Fácil",
                descricaoPrevia: "Essa é uma receita de uma deliciosa banana com leite em pó, Nescau e farinha láctea. Um lanche prático, rápido e muito divertido de fazer!!",
                duracao: 10,
                objetos: [
                    "1 colher",
                    "1 prato"
                ],
                ingredientes: [
                    "1 banana",
                    "Leite em pó",
                    "Achocolatado em pó",
                    "Farinha láctea"
                ],
                imagem: [
                    "falta essa parte",
                    "e mais um bocado aqui em baixo"
                ],
                tituloInstrucao: [
                    "Pegue um prato",
                    "Pegue uma colher e coloque ao lado do prato",
                    "Pegue uma banana e coloque em cima da mesa",
                    "Pegue o leite em pó e coloque junto da banana",
                    "Pegue o Nescau e coloque junto da banana",
                    "Pegue a farinha láctea e coloque junto da banana",
                    "Descasque a Banana",
                    "Corte a banana",
                    "Coloque o leite em pó",
                    "Coloque o Nescau",
                    "Coloque a farinha láctea"
                ],
                descricao: [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "Tire toda a casca da banana e depois coloque a banana descascada em cima do prato",
                    "Use a colher para cortar a banana em pequenos pedaços",
                    "Pegue o leite em pó com a colher e espalhe por cima da banana",
                    "Pegue o Nescau com a colher e espalhe por cima da banana",
                    "Pegue a Farinha Láctea com a colher e espalhe por cima da banana"
                ],
                audioDescricao: [
                    "falta essa parte",
                    "e mais um bocado aqui em baixo"
                ]
            ),
            Receita(
                titulo: "Misto quente",
                imagemPrevia: "imagem da previa aqui",
                dificuldade: "Médio",
                descricaoPrevia: "Essa é uma receita muito gostosa e prática de um misto quente bastante recheado perfeito para um lachinho da tarde ou café da manhã",
                duracao: 10,
                objetos: [
                    "1 prato",
                    "1 sanduichera"
                ],
                ingredientes: [
                    "1 pacote de pão de forma",
                    "Presunto fatiado",
                    "Queijo Mussarela fatiado"
                ],
                imagem: [
                    "falta essa parte",
                    "e mais um bocado aqui em baixo"
                ],
                tituloInstrucao: [
                    "Pegue um prato e coloque em cima da mesa",
                    "Pegue o pacote de pão de forma e coloque ao lado do prato",
                    "Pegue o pacote de Presunto fatiado e coloque em cima da mesa",
                    "Pegue o pacote de Queijo fatiado e coloque junto ao Presunto",
                    "Pegue a Sanduicheira e coloque em cima da mesa",
                    "Posicione o pão",
                    "Coloque o presunto",
                    "Coloque o queijo",
                    "Coloque o pão",
                    "Posicione a sanduicheira",
                    "Espere 5 minutos",
                    "Abra a sanduicheira",
                    "Espere 5 minutos",
                    "Agora é só servir!"
                ],
                descricao: [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "Abra o pacote de pão e coloque duas fatias em cima do prato",
                    "Pegue uma fatia de presunto e coloque no pão que está em cima do prato",
                    "Pegue uma fatia de queijo e coloque no pão com presunto que está em cima do prato",
                    "Pegue a outra fatia de pão e coloque por cima do queijo, para terminar o sanduiche",
                    "Abra a sanduicheira e a conecte em uma tomada",
                    "Posicione o sanduiche que estava no prato na saduicheira e a feche",
                    "Confira se a sanduicheira está fechada",
                    "Desligue a sanduicheira e deixe aberta para que a temperatura do pão diminua",
                    "Você pode aproveitar esse tempo para organizar os materiais que foram utilizados na receita",
                    "Retire o misto quente da sanduicheira e coloque no prato"
                ],
                audioDescricao: [
                    "falta essa parte",
                    "e mais um bocado aqui em baixo"
                ]
            )
        ]
    }
}
