//
//  TestCell.swift
//  UITableViewUICollectionView
//
//  Created by Azamat Sarinzhiev on 7/1/22.
//

import Foundation
import UIKit
import SnapKit

class CustomCell: UITableViewCell { // TestCell это кастомная ячейка, которая унаследована от базового класса ячейки.(базовый класс это UITableViewCell)
    lazy var titleName: UILabel = {
        let view = UILabel()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 3
        view.textColor = .cyan
        view.backgroundColor = .yellow
        return view
    }()
    
    override func layoutSubviews() { // это метод внутри базового класса ячейки (UITableViewCell) и вызываеся тогда когда создается UITableViewCell
        addSubview(titleName)
        titleName.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(60)
        }
    }
}
