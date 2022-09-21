//
//  CheckDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import Foundation
protocol ButtonDelegate: AnyObject{
    func sair()
    func continuar()
    func menu()
    func passarTela()
}
