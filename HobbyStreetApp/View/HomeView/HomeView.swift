import UIKit
//MARK: 이 화면이 일단은 스크롤뷰로 구성되어야겠구만
class HomeView: UIView {
    
    let mainTitle: UILabel = {
        let mainTitle = UILabel()
        mainTitle.textColor = .black
        mainTitle.font = UIFont.systemFont(ofSize: 21)
        mainTitle.text = "tailbe"
        return mainTitle
    }()
    
    let recommendCocktail: UILabel = {
        let recommendCoctail = UILabel()
        recommendCoctail.textColor = .black
        recommendCoctail.font = UIFont.boldSystemFont(ofSize: 20)
        recommendCoctail.text = "추천 칵테일"
        return recommendCoctail
    }()
    
    let subRecommendCocktail: UILabel = {
        let subRecommendCocktail = UILabel()
        subRecommendCocktail.textColor = .black
        subRecommendCocktail.font = UIFont.systemFont(ofSize: 15)
        subRecommendCocktail.text = "어떤 칵테일을 만들어 마셔 볼까?"
        subRecommendCocktail.textAlignment = .center
        return subRecommendCocktail
    }()
    
    let startButton: UIButton = {
        let startButton = UIButton()
        startButton.backgroundColor = .black
        startButton.setTitle("시작하기", for: .normal)
        startButton.setTitleColor(.white, for: .normal)
        startButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        startButton.layer.cornerRadius = 20
        startButton.layer.borderColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1).cgColor
        startButton.layer.borderWidth = 3
        return startButton
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    
    }
     
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureUI() {
       let safeArea = safeAreaLayoutGuide
    
        self.addSubview(mainTitle)
        self.addSubview(recommendCocktail)
        self.addSubview(subRecommendCocktail)
//        self.addSubview(subCollectionOfTip)
//        self.addSubview(collectionOfTip)
        
        mainTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeArea).offset(16)
            make.height.equalTo(21)
            make.width.equalTo(63)
        }
        
        recommendCocktail.snp.makeConstraints { make in
            make.height.equalTo(24)
            make.top.equalTo(mainTitle.snp.bottom).offset(32)
            make.leading.equalToSuperview().offset(16)
        }
        
        subRecommendCocktail.snp.makeConstraints { make in
            make.top.equalTo(recommendCocktail.snp.bottom).offset(40)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(23)
        }
        
        startButton.snp.makeConstraints { make in
            make.top.equalTo(subRecommendCocktail.snp.bottom).offset(8)
            make.height.equalTo(39)
            make.width.equalTo(105)
            make.centerX.equalToSuperview()
        }
    }
    
//    func tapStartButton() {
//        let vc = ViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
}


