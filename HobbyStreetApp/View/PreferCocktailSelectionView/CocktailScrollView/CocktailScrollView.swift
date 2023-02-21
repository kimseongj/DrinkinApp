//
//  CocktailScrollView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/13.
//

import UIKit

class CocktailScrollView: UIScrollView {
    
    private let cocktailStackView: UIStackView = {
        let cocktailStackView = UIStackView()
        cocktailStackView.axis = .vertical
        cocktailStackView.spacing = 10
        cocktailStackView.distribution = .fillEqually
        return cocktailStackView
    }()
    
    private let cocktailPartStackView: UIStackView = {
        let cocktailPartStackView = UIStackView()
        cocktailPartStackView.axis = .horizontal
        cocktailPartStackView.spacing = 10
        cocktailPartStackView.distribution = .fillProportionally
        return cocktailPartStackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
