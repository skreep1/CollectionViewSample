//
//  Menu.swift
//  DynamoKyivTeam
//
//  Created by Maksim Skrypka on 17.06.2022.
//

import Foundation
import UIKit

// структура игроков
struct Player {
    var name: String
    var image: UIImage
}

class Team {
    // массив игроков
    var players = [Player]()
    
    // setup вызывается когда создается экземпляр класса Team
    init() {
        setup()
    }
    
    // создаем структуру для наших игроков
    func setup() {
        let player1 = Player(name: "Денис Бойко", image: UIImage(named: "boiko")!)
        let player2 = Player(name: "Микита Бурда", image: UIImage(named: "burda")!)
        let player3 = Player(name: "Денис Попов", image: UIImage(named: "popov")!)
        let player4 = Player(name: "Олександр Сирота", image: UIImage(named: "sirota")!)
        let player5 = Player(name: "Артем Тимчик", image: UIImage(named: "tymchyk")!)
        let player6 = Player(name: "Владислав Дубінчак", image: UIImage(named: "dybinchak")!)
        self.players = [player1, player2, player3, player4, player5, player6]
    
    }
}
