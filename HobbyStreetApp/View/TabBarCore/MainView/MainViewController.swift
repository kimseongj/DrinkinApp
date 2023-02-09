import UIKit

protocol MainViewDelegate: AnyObject {
    func pushChooseCocktailVC()
}

class MainViewController: UIViewController {
    weak var coordinator: Coordinator?
    weak var delegate: MainViewDelegate?
    
    let skeletonView: UIImageView = {
        let skeletonView = UIImageView()
        skeletonView.image = UIImage(named: "skeletonView")
        return skeletonView
    }()
    
    let recommendLabel1: UILabel = {
        let recommendLabel = UILabel()
        recommendLabel.font = UIFont.boldSystemFont(ofSize: 17)
        recommendLabel.text = "마셔봤던 칵테일을 선택하고"
        return recommendLabel
    }()
    
    let recommendLabel2: UILabel = {
        let recommendLabel = UILabel()
        recommendLabel.font = UIFont.boldSystemFont(ofSize: 17)
        recommendLabel.text = "다양한 칵테일을 추천받아보세요"
        return recommendLabel
    }()
    
    let startButton: UIButton = {
        let startButton = UIButton()
        startButton.setTitle("시작하기", for: .normal)
        startButton.setTitleColor(.white, for: .normal)
        startButton.backgroundColor = .black
        startButton.layer.cornerRadius = 20
        startButton.layer.borderColor = UIColor(red: 0.467, green: 0.467, blue: 0.459, alpha: 1).cgColor
        startButton.layer.borderWidth = 3
        startButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return startButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
    }
    
    func configureUI() {
        view.addSubview(skeletonView)
        skeletonView.addSubview(recommendLabel1)
        skeletonView.addSubview(recommendLabel2)
        view.addSubview(startButton)
        
        skeletonView.snp.makeConstraints { make in
            make.height.equalTo(380)
            make.width.equalTo(315)
            make.centerY.centerX.equalToSuperview()
        }
        
        recommendLabel1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(200)
        }
        recommendLabel2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(recommendLabel1.snp.bottom).offset(4)
        }
        
        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(39)
            make.width.equalTo(108)
            make.top.equalTo(recommendLabel2.snp.bottom).offset(10)
        }
    }
    
    @objc func buttonAction() {
        delegate?.pushChooseCocktailVC()
    }
}


