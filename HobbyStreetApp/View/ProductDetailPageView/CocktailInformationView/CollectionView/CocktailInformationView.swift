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
    
    let toolView = ToolView()
    let glassView = GlassView()
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
        self.addSubview(toolView)
        self.addSubview(glassView)
        self.addSubview(skillView)
        
        cocktailNameTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(17)
        }
        
        toolView.snp.makeConstraints { make in
            make.top.equalTo(cocktailNameTitle.snp.bottom)
            make.trailing.leading.equalToSuperview()
        }
        
        skillView.snp.makeConstraints { make in
            make.top.equalTo(toolView.snp.bottom)
            make.trailing.leading.equalToSuperview()
        }
        
        glassView.snp.makeConstraints {make in
            make.top.equalTo(skillView.snp.bottom)
            make.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
