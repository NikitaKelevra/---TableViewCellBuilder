//
//  CellsBuilder.swift
//  Строитель - TableViewCellBuilder
//
//  Created by Сперанский Никита on 22.05.2022.
//

import UIKit


//  Конфигуратор для ячейки отдельный - будем вызывать конфиг для ячеек (при работе с дженериком)
protocol Configurable {
    func config()
}

// MARK: - Протокол Строителя

struct AvatarViewModel {
    
}

struct UserInfoViewModel {
    
}

struct UserDetaillsViewModel {
    
}

// MARK: - Протокол Строителя

protocol CellsBuildable {
    
    //Другой способ - Конфигурация ячеек через дженерик
//    func configure<T: Configurable>(type: T, cell: T)
    
    func configureCell(for cell: AvatarTableViewCell,
                       with avatarViewModel: AvatarViewModel)
    func configureCell(for cell: UserInfoViewModel,
              with userInfoViewModel: UserInfoViewModel)
    func configureCell(for cell: UserDetaillsViewModel,
              with userDetaillsViewModel: UserDetaillsViewModel)
}

// MARK: - CellsBuilder - Строитель ячеек

final class CellsBuilder {
    
}


extension CellsBuilder: CellsBuildable {
    func configureCell(for cell: AvatarTableViewCell, with avatarViewModel: AvatarViewModel) {
        
    }
    
    func configureCell(for cell: UserInfoViewModel, with userInfoViewModel: UserInfoViewModel) {
        
    }
    
    func configureCell(for cell: UserDetaillsViewModel, with userDetaillsViewModel: UserDetaillsViewModel) {
        
    }
    

}


