//
//  PreferredCocktailSelectionView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/28.
//

import UIKit
    
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
        exitButton.addTarget(self, action: #selector(pushExitButton), for: .touchUpInside)
        //(self, action: #selector(pushExitButton(), for: .touchUpInside)
        
        return exitButton
    }()
    
    //MARK:- baseCollectionView
    let preferBaseView = PreferBaseView()
        
    //MARK:- cocktailCollectionView
    let cocktailCollectionView = CocktailCollectionView()
    
    private let completeSelectionButton: UIButton = {
        let completeSelectionButton = UIButton()
        completeSelectionButton.layer.borderColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1).cgColor
        completeSelectionButton.layer.borderWidth = 3
        completeSelectionButton.backgroundColor = .black
        completeSelectionButton.setTitle("선택 완료", for: .normal)
        completeSelectionButton.titleLabel?.textColor = UIColor(red: 0.909, green: 0.906, blue: 0.903, alpha: 1)
        completeSelectionButton.titleLabel?.font = UIFont(name: "Pretendard-Black", size: 15)
        return completeSelectionButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        view.backgroundColor = .white
        MainViewController.login = true
        setCocktailCollectionView()
    }
    
    func configureUI() {
        let safeArea = view.safeAreaLayoutGuide
        
        view.addSubview(mainLabel)
        view.addSubview(subLabel)
        view.addSubview(exitButton)
        view.addSubview(preferBaseView)
        view.addSubview(cocktailCollectionView)
        view.addSubview(completeSelectionButton)
        
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
        
        preferBaseView.snp.makeConstraints { make in
            make.top.equalTo(exitButton.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(40)
        }
        
        cocktailCollectionView.snp.makeConstraints { make in
            make.top.equalTo(preferBaseView.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(7)
            make.trailing.equalToSuperview().offset(-7)
            make.bottom.equalTo(completeSelectionButton.snp.top)
        }
        
        completeSelectionButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(safeArea.snp.bottom)//.offset(-AppCoordinator.tabBarHeight)
            make.height.equalTo(54)
        }
        
    }
    
    func setCocktailCollectionView() {
        cocktailCollectionView.delegate = self
        cocktailCollectionView.dataSource = self
    }
    
    @objc func pushExitButton() {
        self.dismiss(animated: true)
    }
    
}

extension PreferCocktailSelectionViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cocktailCollectionView.dequeueReusableCell(withReuseIdentifier: "CocktailCell", for: indexPath) as! CocktailCollectionViewCell
        cell.cocktailNameLabel.text = "asd"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize: CGRect = UIScreen.main.bounds
        let cellHeight = screenSize.height / 4
        let cellWidth = (screenSize.width - 70) / 3

        return CGSize(width: cellWidth, height: cellHeight)
    }
}

