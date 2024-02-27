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
                    "1 prato",
                    "1 colher"
                ],
                ingredientes: [
                    "1 banana",
                    "Leite em pó",
                    "Achocolatado em pó",
                    "Farinha láctea"
                ], imagensObjetos: [
                    "IMG_BananaComNescau_1",
                    "IMG_BananaComNescau_2",
                    "IMG_BananaComNescau_3",
                    "IMG_BananaComNescau_4",
                    "IMG_BananaComNescau_5",
                    "IMG_BananaComNescau_6",
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
                ]
                
            ),
            Receita(
                precisaAuxilio: false,
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
                ],imagensObjetos: [
                    "IMG_MistoQuente_1",
                    "IMG_MistoQuente_5",
                    "IMG_MistoQuente_2",
                    "IMG_MistoQuente_3",
                    "IMG_MistoQuente_4",
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
                ]
                
            ),
            Receita(
                precisaAuxilio: false,
                titulo: "Bolo de caneca",
                imagemPrevia: "IMG_BoloDeCaneca_Preview",
                dificuldade: "Difícil",
                descricaoPrevia: "Essa é uma receita de um delicioso bolo de caneca. Muito fofinho e macio, é uma excelente sobremesa!",
                duracao: 12,
                objetos: [
                    "1 caneca",
                    "1 xícara",
                    "1 píres",
                    "2 colheres de sopa",
                    "1 colher de chá",
                ],
                ingredientes: [
                    "Nescau",
                    "Farinha de trigo sem fermento",
                    "Açucar",
                    "Fermento em pó",
                    "Leite",
                    "Óleo",
                    "1 ovo"
                ],imagensObjetos: [
                    "IMG_BoloDeCaneca_1",
                    "IMG_BoloDeCaneca_2",
                    "IMG_BoloDeCaneca_3",
                    "IMG_BoloDeCaneca_4",
                    "IMG_BoloDeCaneca_6",
                    "IMG_BoloDeCaneca_7",
                    "IMG_BoloDeCaneca_8",
                    "IMG_BoloDeCaneca_9",
                    "IMG_BoloDeCaneca_10",
                    "IMG_BoloDeCaneca_11",
                    "IMG_BoloDeCaneca_12",
                    "IMG_BoloDeCaneca_13"
                ],
                troca: 11,
                imagem: [
                    "IMG_BoloDeCaneca_1",
                    "IMG_BoloDeCaneca_2",
                    "IMG_BoloDeCaneca_3",
                    "IMG_BoloDeCaneca_4",
                    "IMG_BoloDeCaneca_6",
                    "IMG_BoloDeCaneca_7",
                    "IMG_BoloDeCaneca_8",
                    "IMG_BoloDeCaneca_9",
                    "IMG_BoloDeCaneca_10",
                    "IMG_BoloDeCaneca_11",
                    "IMG_BoloDeCaneca_12",
                    "IMG_BoloDeCaneca_13",
                    "IMG_BoloDeCaneca_14",
                    "IMG_BoloDeCaneca_15",
                    "IMG_BoloDeCaneca_16",
                    "IMG_BoloDeCaneca_17",
                    "IMG_BoloDeCaneca_18",
                    "IMG_BoloDeCaneca_19",
                    "IMG_BoloDeCaneca_20",
                    "IMG_BoloDeCaneca_21",
                    "IMG_BoloDeCaneca_22",
                    "IMG_BoloDeCaneca_23",
                    "IMG_BoloDeCaneca_24",
                    "IMG_BoloDeCaneca_25",
                    "IMG_BoloDeCaneca_26",
                    "IMG_BoloDeCaneca_27",
                    "IMG_BoloDeCaneca_28"
                ],
                tituloInstrucao: [
                    "Pegue a caneca e coloque sobre a mesa",
                    "Pegue a xícara e coloque sobre a mesa",
                    "Pegue o píres e coloque sobre a mesa",
                    "Pegue as colheres de sopa e coloque ao lado da caneca",
                    "Pegue a colher de chá e coloque sobre a mesa",
                    "Pegue o Nescau e coloque sobre a mesa",
                    "Pegue a farinha e coloque junto do Nescau",
                    "Pegue o açúcar e coloque junto dos ingredientes",
                    "Pegue o fermento e coloque junto dos ingredientes",
                    "Pegue o leite e coloque junto dos ingredientes",
                    "Pegue o óleo e coloque junto dos ingredientes",
                    "Pegue o ovo e, com cuidado, coloque em cima do píres",
                    "Coloque o Nescau",
                    "Coloque a farinha de trigo",
                    "Coloque o açúcar",
                    "Coloque o fermento",
                    "Misture os ingredientes",
                    "Coloque o leite",
                    "Coloque o óleo",
                    "Quebre o ovo",
                    "Coloque o ovo",
                    "Misture os ingredientes",
                    "Leve ao micro-ondas",
                    "Aguarde 3 minutos",
                    "Pegue um pano",
                    "Retire do micro-ondas",
                    "Pode servir!",
                ],
                descricao: [
                    "Escolha uma caneca que possa ir ao micro-ondas",
                    "",
                    "",
                    "São as colheres de tamanho normais",
                    "É a colher pequena",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "Pegue o Nescau com uma das colheres de sopa e coloque na caneca \nRepita esse passo 1 vez",
                    "Pegue a farinha de trigo com a mesma colher de sopa e coloque na caneca \nRepita esse passo 2 vezes",
                    "Pegue o açúcar com a mesma colher de sopa e coloque na caneca \nRepita esse passo 2 vezes",
                    "Encha metade da colher de chá com fermento e coloque na caneca",
                    "Com a colher de sopa, misture bem os ingredientes em pó dentro da caneca",
                    "Encha a outra colher de sopa com o leite e coloque na caneca \nRepita esse passo 2 vezes",
                    "Encha a mesma colher de sopa com o óleo e coloque na caneca \nRepita esse passo 1 vez",
                    "Use a colher para bater no lado do ovo até quebrar, então abra com os dedos e derrame dentro da xícara",
                    "Derrame o ovo da xícara dentro da caneca, cuidado para não cair cascas de ovo!",
                    "Com uma colher de sopa, misture com delicadeza todos os ingredientes dentro da caneca",
                    "Coloque a caneca em cima do píres, e depois coloque dentro do forno micro-ondas",
                    "Ligue o micro-ondas por 3 minutos e aguarde até terminar",
                    "Cuidado, o bolo vai sair bem quente, pegue um pano para retirá-lo do micro-ondas",
                    "CUIDADO: A caneca está quente!\nCom o pano, retire  o píres com a caneca do micro-ondas e espere esfriar",
                    "Seu bolo de caneca está pronto! Pode pegar uma colher e saboreá-lo"
                ]
                
            ),
        ]
    }
}
