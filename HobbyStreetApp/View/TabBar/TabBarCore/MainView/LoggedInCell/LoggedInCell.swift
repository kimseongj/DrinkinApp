//
//  CollectionOfTipCell.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/12.
//

import UIKit

class LoggedInCell: UICollectionViewCell {
    
    static let cellId = "LoggedInCell"
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        return stackView
    }()
    
    func setStackView() {
        stackView.addArrangedSubview(cocktailImage)
        stackView.addArrangedSubview(labelView)
    }
    
    let cocktailImage: UIImageView = {
        let cocktailImage = UIImageView()
        cocktailImage.backgroundColor = .lightGray
        return cocktailImage
    }()
    
    let labelView = UIView()
    
    func setLabelView() {
        labelView.addSubview(subtitleLabel)
        labelView.addSubview(titleLabel)
        labelView.addSubview(levelLabel)
        labelView.addSubview(abvLabel)
        labelView.addSubview(sugarContentLabel)
        
    }
    
    var titleLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 20)
        title.textColor = .black
        title.text = "갓파더"
        return title
    }()
    
    var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.font = UIFont.systemFont(ofSize: 12)
        subtitleLabel.textColor = UIColor(red: 0.472, green: 0.465, blue: 0.453, alpha: 1)
        subtitleLabel.text = "위스키베이스"
        return subtitleLabel
    }()
    
    var levelLabel: UILabel = {
        let levelLabel = UILabel()
        levelLabel.font = UIFont.systemFont(ofSize: 14)
        levelLabel.textColor = .black
        levelLabel.text = "난이도"
        
        return levelLabel
    }()
    
    var abvLabel: UILabel = {
        let abvLabel = UILabel()
        abvLabel.font = UIFont.systemFont(ofSize: 14)
        abvLabel.textColor = .black
        abvLabel.text = "도  수"
        
        return abvLabel
    }()
    
    var sugarContentLabel: UILabel = {
        let sugarContentLabel = UILabel()
        sugarContentLabel.font = UIFont.systemFont(ofSize: 14)
        sugarContentLabel.textColor = .black
        sugarContentLabel.text = "당  도"
        
        return sugarContentLabel
    }()
    
    var descriptionLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = .black
        title.text = "스카치 위스키의 향 위에 아마레또의 달달한 아몬드향을 더했다. 아마레또는 생각보다 더 달다. 단 맛..."
        
        return title
    }()
    
    var baseLabel: UILabel = {
        let baseLabel = UILabel()
        baseLabel.font = UIFont.systemFont(ofSize: 14)
        baseLabel.textColor = .black
        baseLabel.text = "당  도"
        
        return baseLabel
    }()
    
    var ingredientLabel: UILabel = {
        let ingredientLabel = UILabel()
        ingredientLabel.font = UIFont.systemFont(ofSize: 14)
        ingredientLabel.textColor = .black
        ingredientLabel.text = "당  도"
        
        return ingredientLabel
    }()
    
    var garnishLabel: UILabel = {
        let garnishLabel = UILabel()
        garnishLabel.font = UIFont.systemFont(ofSize: 14)
        garnishLabel.textColor = .black
        garnishLabel.text = "당  도"
        
        return garnishLabel
    }()
    
    var seeMoreButton: UIButton = {
        let seeMoreButton = UIButton()
        seeMoreButton.setTitle("자세히 보기", for: .normal)
        seeMoreButton.setTitleColor(.white, for: .normal)
        seeMoreButton.backgroundColor = .black
        seeMoreButton.layer.borderColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1).cgColor
        seeMoreButton.layer.borderWidth = 3
        return seeMoreButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureUI()
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configureUI() {
        self.addSubview(cocktailImage)
        self.addSubview(seeMoreButton)
        
        cocktailImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-100)
        }
        
        seeMoreButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-24)
            make.height.equalTo(42)
        }
    }
}

//class LoggedInCell: UICollectionViewCell {
//
//    static let cellId = "LoggedInCell"
//
//        let cocktailImage: UIImageView = {
//            let cocktailImage = UIImageView()
//            cocktailImage.backgroundColor = .lightGray
//            return cocktailImage
//        }()
//
//    override init(frame: CGRect) {
//        super.init(frame: .zero)
//        configureUI()
//        self.backgroundColor = .green
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//
//    func configureUI() {
//                self.contentView.addSubview(cocktailImage)
//
//                cocktailImage.snp.makeConstraints { make in
//                    make.top.equalTo(self.contentView.snp.top).offset(20)
//                    make.leading.equalTo(self.contentView.snp.leading).offset(20)
//                    make.trailing.equalTo(self.contentView.snp.trailing).offset(-20)
//                    make.bottom.equalTo(self.contentView.snp.bottom).offset(-8)
//                }
//    }
//}
