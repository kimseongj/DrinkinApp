//
//  CocktailScrollView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/13.
//

import UIKit

class CocktailCollectionView: UICollectionView {
    private let flowLayout = UICollectionViewFlowLayout()
   
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: flowLayout)
        setCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setCollectionView() {
        flowLayout.scrollDirection = .vertical
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 8
        self.isScrollEnabled = true
        self.showsVerticalScrollIndicator = true
        self.showsHorizontalScrollIndicator = false
        self.contentInset = .zero
        self.clipsToBounds = true
        self.register(BaseCell.self, forCellWithReuseIdentifier: "CocktailCell")
        self.layoutIfNeeded()
    }
}

class CocktailCollectionViewCell: UICollectionViewCell {
    static let cellID = "CocktailCell"
    
    private lazy var cocktailImageView: UIImageView = UIImageView()
    private lazy var cocktailNameLabel: UILabel = {
        let cocktailNameLabel = UILabel()
        cocktailNameLabel.font = UIFont.systemFont(ofSize: 13)
        return cocktailNameLabel
    }()
    
    private func configureUI() {
        self.addSubview(cocktailImageView)
        self.addSubview(cocktailNameLabel)
      
    }
}
