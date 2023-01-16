import UIKit
import SnapKit

class CocktailInformationView: UIView {
    let cocktailNameTitle: UILabel = {
        let cocktailName = "COCKTAIL_NAME"
        let title = UILabel()
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: 17)
        title.text = "한 눈에 보는 \(cocktailName)"
        return title
    }()
    
    let baseView = BaseView()
    let ingredientView = IngredientView()
    let toolView = ToolView()
    let skillView = SkillView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        self.addSubview(cocktailNameTitle)
        self.addSubview(baseView)
        self.addSubview(ingredientView)
        self.addSubview(toolView)
        self.addSubview(skillView)
        
        cocktailNameTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(17)
        }
        
        baseView.snp.makeConstraints { make in
            make.top.equalTo(cocktailNameTitle.snp.bottom)
            make.trailing.leading.equalToSuperview()
        }
        
        ingredientView.snp.makeConstraints {make in
            make.top.equalTo(baseView.snp.bottom)
            make.trailing.leading.equalToSuperview()
        }
        
        toolView.snp.makeConstraints { make in
            make.top.equalTo(ingredientView.snp.bottom)
            make.trailing.leading.equalToSuperview()
        }
        
        skillView.snp.makeConstraints { make in
            make.top.equalTo(toolView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}

//뷰가 총 12개
