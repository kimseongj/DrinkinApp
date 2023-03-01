import UIKit
import SnapKit

protocol PushToModal: AnyObject {
    func pushToModal()
}

class ProductDetailViewController: UIViewController {

    let scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.alwaysBounceVertical = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()

    let stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
//        stackView.alignment = .fill
        stackView.spacing = 1
        return stackView
    }()
    
    let mainContentView = MainContentView()
    let cocktailInformationView = CocktailInformationView()
    let receipeView = ReceipeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureScrollView()
        configureStackView()
    }

    private func configureScrollView(){
        view.addSubview(scrollView)
                scrollView.snp.makeConstraints { make in
                    make.top.bottom.leading.trailing.equalToSuperview()
                }
    }

    private func configureStackView(){
        scrollView.addSubview(stackView)

                stackView.snp.makeConstraints { make in
                    make.top.bottom.leading.trailing.equalToSuperview()
                    make.width.equalToSuperview()
                }
        stackView.addArrangedSubview(mainContentView)
        stackView.addArrangedSubview(cocktailInformationView)
        stackView.addArrangedSubview(receipeView)
        //stackView.addArrangedSubview(commentView)
    }
    
}
