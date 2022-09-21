//
//  PassoPassoDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import Foundation
protocol PassoPassoDelegate: AnyObject{
    func sair()
    func continuar()
    func menu()
    func anterior()
    func proximo()
    func reproducaoAudios()
}
