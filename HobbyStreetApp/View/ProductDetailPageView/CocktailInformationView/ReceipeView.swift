import UIKit
import SnapKit

class ReceipeView: UIView {
    let receipeText: UILabel = {
        let receipeText = UILabel()
        receipeText.font = UIFont.systemFont(ofSize: 15)
        receipeText.text = """
여러분은 평소에 맥주를 즐겨드시나요? 저도 맥주를 참 좋아하는데요. 가끔 기분 전환이 필요할 때, 바로 오늘 소개해드릴 세르바사 콘 리몬을 만들어 마시곤 해요.

세르바사 콘 리몬은 스페인의 바나 레스토랑에서 쉽게 찾아볼 수 있어요. 그래서 이름도 스페인어인데 우리말로는 간단해요. 바로, ‘레몬을 넣은 맥주'죠.

레몬 향의 상쾌함과 라거 맥주의 청량감이 함께 어우러진 이 칵테일은, 남녀노소 모두 부담 없이 즐길 수 있답니다.

저도 기회만 된다면, 스페인 현지에서 즐겨보고 싶네요.
"""
        receipeText.numberOfLines = 0
        receipeText.sizeToFit()
        return receipeText
    }()
    
    let receipeStep1: UILabel = {
        let receipeStep1 = UILabel()
        receipeStep1.font = UIFont.boldSystemFont(ofSize: 20)
        receipeStep1.text = "1단계. 모든 재료 준비하기"
        return receipeStep1
    }()
    
    let receipeImage1: UIImageView = {
        let receipeImage1 = UIImageView()
        receipeImage1.backgroundColor = .lightGray
        return receipeImage1
    }()
    
    let rectangle: UILabel = {
        let rectangle = UILabel()
        rectangle.layer.backgroundColor = UIColor(red: 0.906, green: 0.906, blue: 0.906, alpha: 1).cgColor
        return rectangle
    }()
    
    let partition: UILabel = {
        let partition = UILabel()
        partition.layer.backgroundColor = UIColor(red: 0.906, green: 0.906, blue: 0.906, alpha: 1).cgColor
        return partition
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        self.addSubview(receipeText)
        self.addSubview(receipeStep1)
        self.addSubview(receipeImage1)
        self.addSubview(partition)
            
        receipeText.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            
        }
        
        receipeStep1.snp.makeConstraints { make in
            make.top.equalTo(receipeText.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(20)
        }
        
        receipeImage1.snp.makeConstraints { make in
            make.top.equalTo(receipeStep1.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(214)
        }
        
        partition.snp.makeConstraints { make in
            make.top.equalTo(receipeImage1.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-1)
        }
        
    }
    
    
}
