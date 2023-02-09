//
//  PreferredCocktailSelectionView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/28.
//

import UIKit
import AlignedCollectionViewFlowLayout
    // present방식으로 구현해야될거 같다.
class PreferCocktailSelectionViewController: UIViewController {
    
    //MARK:- mainLabel
    let mainLabel: UILabel = {
        let mainLabel = UILabel()
        mainLabel.font = UIFont.boldSystemFont(ofSize: 20)
        mainLabel.text = "마셔봤던 칵테일 선택"
        return mainLabel
    }()
    
    //MARK:- subLabel
    let subLabel: UILabel = {
        let subLabel = UILabel()
        subLabel.font = UIFont.boldSystemFont(ofSize: 14)
        subLabel.textColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1)
        subLabel.text = "선택을 기반으로 다양한 칵테일을 추천해 드립니다."
        return subLabel
    }()
    
    //MARK:- exitButton
    let exitButton: UIButton = {
        let exitButton = UIButton()
        exitButton.setImage(UIImage(systemName: "multiply"), for: .normal)
        return exitButton
    }()
    
    //MARK:- baseCollectionView
    private var baseCollectionView: UICollectionView =  {
        let flowLayout: UICollectionViewFlowLayout = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 8
            return layout
        }()
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.isScrollEnabled = true
        view.showsVerticalScrollIndicator = true
        view.showsHorizontalScrollIndicator = false
        view.contentInset = .zero
        view.clipsToBounds = true
        view.register(BaseCell.self, forCellWithReuseIdentifier: "BaseCell")
        
        return view
    }()
    
    private let data = ["위스키 베이스", "리큐르 베이스", "보드카 베이스", "진 베이스"]
    
    //MARK:- cocktailScrollView
    let cocktailScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
   //MARK:- cocktailStackView
    private let cocktailStackView: UIStackView = {
        let cocktailStackView = UIStackView()
        cocktailStackView.axis = .vertical
        cocktailStackView.spacing
        cocktailStackView.distribution
        return cocktailStackView
    }()
    
    private let completeSelectionButton: UIButton = {
        let completeSelectionButton = UIButton()
        completeSelectionButton.layer.borderColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1).cgColor
        completeSelectionButton.layer.borderWidth = 3
        return completeSelectionButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setBaseCollectionView()
        view.backgroundColor = .white
    }
    
    func configureUI() {
        let safeArea = view.safeAreaLayoutGuide
        
        view.addSubview(mainLabel)
        view.addSubview(subLabel)
        view.addSubview(exitButton)
        view.addSubview(baseCollectionView)
        view.addSubview(completeSelectionButton)
        view.addSubview(cocktailScrollView)
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(safeArea).offset(16)
            make.leading.equalToSuperview().offset(16)
        }
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom)
            make.leading.equalToSuperview().offset(16)
        }
        
        exitButton.snp.makeConstraints { make in
            make.top.equalTo(safeArea).offset(22)
            make.trailing.equalToSuperview().offset(-22)
        }
        
        baseCollectionView.snp.makeConstraints { make in
            make.top.equalTo(exitButton.snp.bottom).offset(20)
            make.trailing.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(-16)
            make.height.equalTo(40)
        }
        
        cocktailScrollView.snp.makeConstraints { make in
            make.top.equalTo(baseCollectionView.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(7)
            make.trailing.equalToSuperview().offset(-7)
            make.bottom.equalTo(completeSelectionButton.snp.top)
        }
        
        completeSelectionButton.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(54)
        }
        
    }
    
    func setBaseCollectionView() {
        baseCollectionView.register(BaseCell.self, forCellWithReuseIdentifier: "BaseCell")
        self.baseCollectionView.delegate = self
        self.baseCollectionView.dataSource = self
    }
    
}

extension PreferCocktailSelectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = baseCollectionView.dequeueReusableCell(withReuseIdentifier: BaseCell.id, for: indexPath) as! BaseCell
        cell.baseNameLabel.text = data[indexPath.row]
        cell.layoutIfNeeded()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let baseButtonName = self.data[indexPath.row]
        
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]
        
        let baseButtonNameSize = (baseButtonName as NSString).size(withAttributes: attributes as [NSAttributedString.Key: Any])
        
        return CGSize(width: baseButtonNameSize.width + 32, height: 30 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            15
        }
    
    
    
}

final class BaseCell: UICollectionViewCell {
    
    static let id = "BaseCell"
    
    let baseNameLabel: UILabel = {
        let baseNameLabel = UILabel()
        baseNameLabel.sizeToFit()
        return baseNameLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.cellSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellSetting() {
        self.backgroundColor = .lightGray
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 1.4
        self.addSubview(baseNameLabel)
        
        baseNameLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
}

