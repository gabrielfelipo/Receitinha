//
//  Receita+Receitas.swift
//  Receitinha
//
//  Created by lss8 on 12/09/22.
//

import Foundation

extension Receita {
    static func receitas() -> [Receita] {
        //comentario legal
        return [
            Receita(
                //comentario de thales
                precisaAuxilio: false,
                titulo: "Banana com leite e chocolate",
                imagemPrevia: "IMG_BananaComNescau_Preview",
                dificuldade: "Fácil",
                descricaoPrevia: "Essa é uma receita de uma deliciosa banana com leite em pó, achocolatado em pó e farinha láctea. Um lanche prático, rápido e muito divertido de fazer!!",
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
                troca: 5,
                imagem: [
                    "IMG_BananaComNescau_1",
                    "IMG_BananaComNescau_2",
                    "IMG_BananaComNescau_3",
                    "IMG_BananaComNescau_4",
                    "IMG_BananaComNescau_5",
                    "IMG_BananaComNescau_6",
                    "IMG_BananaComNescau_7",
                    "IMG_BananaComNescau_8",
                    "IMG_BananaComNescau_9",
                    "IMG_BananaComNescau_10",
                    "IMG_BananaComNescau_11",
                    
                ],
                tituloInstrucao: [
                    "Pegue um prato e coloque em cima da mesa",
                    "Pegue uma colher e coloque ao lado do prato",
                    "Pegue uma banana e coloque em cima da mesa",
                    "Pegue o leite em pó e coloque junto da banana",
                    "Pegue o achocolatado em pó e coloque junto da banana",
                    "Pegue a farinha láctea e coloque junto da banana",
                    "Descasque a banana",
                    "Corte a banana",
                    "Coloque o leite em pó",
                    "Coloque o achocolatado em pó",
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
                    "Pegue o achocolatado em pó com a colher e espalhe por cima da banana",
                    "Pegue a farinha Láctea com a colher e espalhe por cima da banana"
                ],
                audioDescricao: [
                    "MP3_BananaComNescau_1",
                    "MP3_BananaComNescau_2",
                    "MP3_BananaComNescau_3",
                    "MP3_BananaComNescau_4",
                    "MP3_BananaComNescau_5",
                    "MP3_BananaComNescau_6",
                    "MP3_BananaComNescau_7",
                    "MP3_BananaComNescau_8",
                    "MP3_BananaComNescau_9",
                    "MP3_BananaComNescau_10",
                    "MP3_BananaComNescau_11",
                    
                ]
            ),
            Receita(
                precisaAuxilio: true,
                titulo: "Misto quente",
                imagemPrevia: "IMG_MistoQuente_Preview",
                dificuldade: "Médio",
                descricaoPrevia: "Essa é uma receita muito gostosa e prática de um misto quente bastante recheado perfeito para um lachinho da tarde ou café da manhã",
                duracao: 15,
                objetos: [
                    "1 prato",
                    "1 sanduicheira"
                ],
                ingredientes: [
                    "2 fatias de pão de forma",
                    "Presunto fatiado",
                    "Queijo mussarela fatiado"
                ],
                troca: 4,
                imagem: [
                    "IMG_MistoQuente_1",
                    "IMG_MistoQuente_2",
                    "IMG_MistoQuente_3",
                    "IMG_MistoQuente_4",
                    "IMG_MistoQuente_5",
                    "IMG_MistoQuente_6",
                    "IMG_MistoQuente_7",
                    "IMG_MistoQuente_8",
                    "IMG_MistoQuente_9",
                    "IMG_MistoQuente_10",
                    "IMG_MistoQuente_11",
                    "IMG_MistoQuente_12",
                    "IMG_MistoQuente_13",
                    "IMG_MistoQuente_14",
                    "IMG_MistoQuente_15",
                    
                ],
                tituloInstrucao: [
                    "Pegue um prato e coloque em cima da mesa",
                    "Pegue o de pão de forma e coloque ao lado do prato",
                    "Pegue o presunto fatiado e coloque em cima da mesa",
                    "Pegue o queijo fatiado e coloque junto ao presunto",
                    "Pegue a sanduicheira e coloque em cima da mesa",
                    "Posicione o pão",
                    "Coloque o presunto",
                    "Coloque o queijo",
                    "Coloque o pão",
                    "Coloque o sanduíche",
                    "Posicione a sanduicheira",
                    "Espere 3 minutos",
                    "Abra a sanduicheira",
                    "Espere 3 minutos",
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
                    "Pegue a outra fatia de pão e coloque por cima do queijo para terminar o sanduíche",
                    "Abra a sanduicheira e posicione o sanduíche que estava no prato",
                    "Feche a sanduicheira e a conecte em uma tomada",
                    "Confira se a sanduicheira está fechada",
                    "Desligue a sanduicheira e deixe aberta para que a temperatura do pão diminua",
                    "Você pode aproveitar esse tempo para organizar os materiais que foram utilizados na receita",
                    "Retire o misto quente da sanduicheira e coloque no prato"
                ],
                audioDescricao: [
                    "MP3_MistoQuente_1",
                    "MP3_MistoQuente_2",
                    "MP3_MistoQuente_3",
                    "MP3_MistoQuente_4",
                    "MP3_MistoQuente_5",
                    "MP3_MistoQuente_6",
                    "MP3_MistoQuente_7",
                    "MP3_MistoQuente_8",
                    "MP3_MistoQuente_9",
                    "MP3_MistoQuente_10",
                    "MP3_MistoQuente_11",
                    "MP3_MistoQuente_12",
                    "MP3_MistoQuente_13",
                    "MP3_MistoQuente_14",
                    "MP3_MistoQuente_15",
                    
                ]
            )
        ]
    }
}
