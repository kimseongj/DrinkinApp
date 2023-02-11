//
//  CollectionOfTipCell.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/12.
//

import UIKit

class CollectionOfTipCell: UICollectionViewCell {
    
    let cocktailImage: UIImageView = {
        var cocktailImage = UIImageView()
        cocktailImage.backgroundColor = .lightGray
        return cocktailImage
    }()
    
    var subTitle: UILabel {
        var subTitle = UILabel()
        subTitle.font = UIFont.systemFont(ofSize: 14)
        title.textColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1)
        title.text = "신데렐라"
        return subTitle
    }
    
    var title: UILabel {
        var title = UILabel()
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = .black
        title.text = "요즘은 논알콜이 대세, 그래서 한번 만들어봤다."
        
        return title
    }
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configureUI() {
        cocktailImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(3)
            make.trailing.equalToSuperview().offset(-3)
            make.bottom.equalToSuperview().offset(-8)
        }
        
        
    }
}
