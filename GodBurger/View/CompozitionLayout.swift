//
//  CompozitionLayout.swift
//  GodBurger
//
//  Created by mac on 11.07.2022.
//


//работаем с композишн лояут, рисуем начертание наших ячеек
import UIKit

class CompozitionLayout {
    enum Section: Int, CaseIterable {
        case classick, burnd, maki, sets
    }
    
    //работа с секцией
    func createCompozitionLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, _ in
            guard let _ = Section(rawValue: sectionIndex) else {
                fatalError("error")
            }
            
            //MARK: - Создаем Итемы
            //делаем размер
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.47),
                                                  heightDimension: .fractionalHeight(0.96))
            //кладем размер в итемы
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            //MARK: - Создаем группу
            //делаем размер
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                   heightDimension: .fractionalHeight(0.5))
            //кидаем размер в группы
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
            
            //MARK: - создаем секцию
            let section = NSCollectionLayoutSection(group: group)
            
            //применяем хэдер к секции
            section.boundarySupplementaryItems = [self.createHeader()]
            return section
            
        }
        return layout
    }
    
    //MARK: - Создание Header. Это заголовок секции
    func createHeader() -> NSCollectionLayoutBoundarySupplementaryItem {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(40))
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: size,
                                                                 elementKind: UICollectionView.elementKindSectionHeader,
                                                                 alignment: .top)
        header.zIndex = 2
        return header
    }
}
