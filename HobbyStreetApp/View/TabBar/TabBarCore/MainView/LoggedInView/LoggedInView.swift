//
//  CollectionOfTipView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/12.
//

import UIKit

class LoggedInView: UIView {

    private var recommendCocktailCollectionView: UICollectionView = { // 일단 컬렉션 뷰까지는 만들어지는거 확인했다잉
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 8
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.isScrollEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.showsVerticalScrollIndicator = true
        view.contentInset = .zero
        view.backgroundColor = .clear
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupRecommendCocktailCollectionView()
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        self.addSubview(recommendCocktailCollectionView)
        recommendCocktailCollectionView.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(20)
            make.trailing.bottom.equalToSuperview().offset(-20)
        }
    }
    
    func setupRecommendCocktailCollectionView() {
        recommendCocktailCollectionView.register(LoggedInCell.self, forCellWithReuseIdentifier: "LoggedInCell")
        recommendCocktailCollectionView.delegate = self
        recommendCocktailCollectionView.dataSource = self
        recommendCocktailCollectionView.isPagingEnabled = true
        recommendCocktailCollectionView.showsHorizontalScrollIndicator = false
    }
    
    @objc func actionB() {
        print("asd")
    }
    
}

extension LoggedInView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return recommendCocktailCollectionView.bounds.size
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = recommendCocktailCollectionView.dequeueReusableCell(withReuseIdentifier: "LoggedInCell", for: indexPath) as! LoggedInCell
        //cell.imageView.image = data[indexPath.row]
        return cell
    }
    
    
}
