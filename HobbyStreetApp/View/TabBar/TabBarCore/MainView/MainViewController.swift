import UIKit

protocol MainViewDelegate: AnyObject {
    func pushChooseCocktailVC()
    func pushProductDetailVC()
}

class MainViewController: UIViewController {
    //var coordinator: PreferCocktailSelectionViewCoordinator?
    var delegate: MainViewDelegate?
    static var login: Bool = false
    
    //MARK:- UnNLoggedinUI
    lazy var unLoggedInView = UIView()
    
    lazy var logoImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "drinkinLogo")
        return logoImage
    }()
    
    lazy var skeletonView: UIImageView = {
        let skeletonView = UIImageView()
        skeletonView.image = UIImage(named: "skeletonView")
        return skeletonView
    }()
    
    lazy var recommendLabel1: UILabel = {
        let recommendLabel = UILabel()
        recommendLabel.font = UIFont.boldSystemFont(ofSize: 17)
        recommendLabel.text = "마셔봤던 칵테일을 선택하고"
        return recommendLabel
    }()
    
    lazy var recommendLabel2: UILabel = {
        let recommendLabel = UILabel()
        recommendLabel.font = UIFont.boldSystemFont(ofSize: 17)
        recommendLabel.text = "다양한 칵테일을 추천받아보세요"
        return recommendLabel
    }()
    
    lazy var startButton: UIButton = {
        let startButton = UIButton()
        startButton.setTitle("시작하기", for: .normal)
        startButton.setTitleColor(.white, for: .normal)
        startButton.backgroundColor = .black
        startButton.layer.cornerRadius = 20
        startButton.layer.borderColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1).cgColor
        startButton.layer.borderWidth = 3
        startButton.addTarget(self, action: #selector(startButtonAction), for: .touchUpInside)
        return startButton
    }()
    
    
    //MARK:- LoggedinView
    lazy var loggedInView = LoggedInView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if MainViewController.login {
            configureLoggedinUI()
        } else {
            configureUnLoggedinUI()
        }
        print("viewWillAppear")
        print(MainViewController.login)
    }
    
    //MARK:- UnLoggedinUI
    private func configureUnLoggedinUI() {
        let safeArea = view.safeAreaLayoutGuide
        
        view.addSubview(unLoggedInView)
        unLoggedInView.addSubview(logoImage)
        unLoggedInView.addSubview(skeletonView)
        skeletonView.addSubview(recommendLabel1)
        skeletonView.addSubview(recommendLabel2)
        unLoggedInView.addSubview(startButton)
        
        unLoggedInView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-AppCoordinator.tabBarHeight)
        }
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeArea)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        skeletonView.snp.makeConstraints { make in
            make.top.equalTo(safeArea).offset(140)
            make.trailing.equalToSuperview().offset(-30)
            make.leading.equalToSuperview().offset(30)
            make.bottom.equalTo(safeArea).offset(-140)
            make.centerY.centerX.equalToSuperview()
        }
        
        recommendLabel1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(recommendLabel2.snp.top).offset(-4)
        }
        
        recommendLabel2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(39)
            make.width.equalTo(108)
            make.top.equalTo(recommendLabel2.snp.bottom).offset(10)
        }
    }
    
    //MARK:- LoginUI
    private func configureLoggedinUI() {
        view.addSubview(loggedInView)
        loggedInView.backgroundColor = .white
        loggedInView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-AppCoordinator.tabBarHeight)
        }
    }
    
    @objc func startButtonAction() {
        delegate?.pushChooseCocktailVC()//self.navigationController!)
        print("asd")
    }
}


