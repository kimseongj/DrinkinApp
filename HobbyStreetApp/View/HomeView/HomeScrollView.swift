import UIKit
//MARK: 이 화면이 일단은 스크롤뷰로 구성되어야겠구만
class HomeScrollView: UIScrollView {
    
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
    
    let recommendButton: UIButton = {
        let recommendButton = UIButton()
        recommendButton.backgroundColor = .black
        recommendButton.setTitle("추천받기", for: .normal)
        recommendButton.setTitleColor(.white, for: .normal)
        recommendButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        recommendButton.layer.cornerRadius = 20
        recommendButton.layer.borderColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1).cgColor
        recommendButton.layer.borderWidth = 3
        return recommendButton
    }()
    
    let subMakingDirectly: UILabel = {
        let smd = UILabel()
        smd.textColor = .black
        smd.font = UIFont.systemFont(ofSize: 14)
        smd.text = "그 칵테일, 어떤 맛일까?"
        return smd
    }()
    
    let makingDirectly: UILabel = {
        let md = UILabel()
        md.textColor = .black
        md.font = UIFont.boldSystemFont(ofSize: 20)
        md.text = "직접 만들어 보았다"
        return md
    }()
    
    let subCollectionOfTip: UILabel = {
        let scot = UILabel()
        scot.textColor = .black
        scot.font = UIFont.systemFont(ofSize: 14)
        scot.text = "내실력을 한 단계 높여 줄"
        return scot
    }()
    
    let collectionOfTip: UILabel = {
        let cot = UILabel()
        cot.textColor = .black
        cot.font = UIFont.boldSystemFont(ofSize: 20)
        cot.text = "꿀팀 모음집"
        return cot
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    
    }
     
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setHomeScrollView() {
        self.backgroundColor = .black
        self.showsVerticalScrollIndicator = false // 스크롤바 표시할지 안할지 정하기
    }

    func configureUI() {
       let safeArea = safeAreaLayoutGuide
    
        self.addSubview(mainTitle)
        self.addSubview(recommendCocktail)
        self.addSubview(subRecommendCocktail)
        self.addSubview(recommendButton)
        self.addSubview(subMakingDirectly)
        self.addSubview(makingDirectly)
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
        
        recommendButton.snp.makeConstraints { make in
            make.top.equalTo(subRecommendCocktail.snp.bottom).offset(8)
            make.height.equalTo(39)
            make.width.equalTo(105)
            make.centerX.equalToSuperview()
        }
        
        subMakingDirectly.snp.makeConstraints { make in
            make.top.equalTo(recommendButton.snp.bottom).offset(40)
            make.leading.equalToSuperview().offset(16)
            make.height.equalTo(17)
            make.width.equalTo(140)
        }
        
        makingDirectly.snp.makeConstraints { make in
            make.top.equalTo(subMakingDirectly.snp.bottom).offset(4)
            make.leading.equalToSuperview().offset(16)
        }
        
        
    }
}


