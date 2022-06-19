//
//  PlayerCell.swift
//  DynamoKyivTeam
//
//  Created by Maksim Skrypka on 17.06.2022.
//

import UIKit


/**
 В этом пакете и классе делаем шаблоны для наших ячеек игроков. Дополнительно использую xib PlayerCell для
 удобства редактирования ячейки
 */

class PlayerCell: UICollectionViewCell {
    @IBOutlet weak var playerImage: UIImageView!

    @IBOutlet weak var playerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // функция для заполнения ячейки
    func setupCell(player: Player) {
        self.playerImage.image = player.image
        self.playerName.text = player.name
    }
    
}
