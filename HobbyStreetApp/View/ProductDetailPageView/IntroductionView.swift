//
//  IntroductionView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/03/03.
//

import UIKit
import SnapKit

class IntroductionView: UIView {
    
    let cocktailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let cocktailTitleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let cocktailTDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    let ingredientStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    let receipeTitleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let receipeDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        cocktailImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
        }
        
        cocktailTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(cocktailImageView).offset(12)
            make.centerX.equalToSuperview()
        }
        
        cocktailTDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(cocktailTitleLabel).offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        ingredientStackView.snp.makeConstraints { make in
            make.top.equalTo(cocktailTDescriptionLabel).offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        receipeTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(ingredientStackView).offset(40)
            make.leading.equalToSuperview().offset(16)
        }
        
        receipeDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(receipeTitleLabel).offset(12)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview()
        }
    }
}
