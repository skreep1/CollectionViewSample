//
//  TeamViewController.swift
//  DynamoKyivTeam
//
//  Created by Maksim Skrypka on 17.06.2022.
//

import UIKit

class TeamViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var team: Team = Team()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Подключаем
        self.collectionView.register(UINib.init(nibName: "PlayerCell", bundle: nil), forCellWithReuseIdentifier: "PlayerCell")
        
        // datasource - это протокол наполнения. CollectionView должна понимать откуда брать данные
        self.collectionView.dataSource = self
        // управляет взаимодействием с пользователеми с содержимим в collectionview
        self.collectionView.delegate = self
        // self.collectionView.layer.cornerRadius = 50
        self.collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }

}


/**
 Расширяем наш класс (datasource, delegate, delegateflowlayout)
 UICollectionViewDelegateFlowLayout - методы этого протокола определяет размер элементов и интервал между ними
 */

extension TeamViewController:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    // Протокол отвечающий за количество ячеек
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return team.players.count
    }
    // Протокол для заполнения данных. Использую локальное хранилище
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         // cоздаем ячейку
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayerCell", for: indexPath) as! PlayerCell
        let player = team.players[indexPath.row]
        cell.setupCell(player: player)
        return cell
    }
    
    // создаем размеры для ячеек
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
