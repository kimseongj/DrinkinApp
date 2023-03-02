import UIKit
import SnapKit

class GlassCollectionViewCell: UICollectionViewCell {
    
    static let indentifier = "GlassCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.cellSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellSetting() {
        self.backgroundColor = .lightGray
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 1.4
        self.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    var label: UILabel = {
        let label = UILabel()
        label.sizeToFit()
        return label
    }()
}

