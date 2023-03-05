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
    
    private let cocktailStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        return stackView
    }()
    
    private let topEmptyView = UIView()
    private let bottomEmptyView = UIView()
    
    
    private lazy var cocktailImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var cocktailNameLabel: UILabel = {
        let cocktailNameLabel = UILabel()
        cocktailNameLabel.font = UIFont.systemFont(ofSize: 13)
        return cocktailNameLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        self.addSubview(cocktailStackView)
        cocktailStackView.addArrangedSubview(topEmptyView)
        cocktailStackView.addArrangedSubview(cocktailImageView)
        cocktailStackView.addArrangedSubview(cocktailNameLabel)
        cocktailStackView.addArrangedSubview(bottomEmptyView)
        
        cocktailStackView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
        }
        
        topEmptyView.snp.makeConstraints { make in
            make.height.equalTo(10)
            make.width.equalTo(20)
        }
      
        bottomEmptyView.snp.makeConstraints { make in
            make.height.equalTo(16)
            make.width.equalTo(20)
        }
    }
}
