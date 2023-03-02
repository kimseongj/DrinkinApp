import UIKit
import SnapKit
import AlignedCollectionViewFlowLayout

class BaseView: UIView {

    var delegate: ProductDetailViewDelegate?
    
    var baseLabelView: UIView = {
        let blv = UIView()
        blv.backgroundColor = .white
        return blv
    }()
    
    var baseCollectionView: BaseCollectionView = {
        let layout = UICollectionViewLayout()
        let bcv = BaseCollectionView(frame: .zero, collectionViewLayout: AlignedCollectionViewFlowLayout(horizontalAlignment:  .left, verticalAlignment: .top))
        bcv.backgroundColor = .white
        bcv.layoutIfNeeded()
        return bcv
    }()
    
    let baseLabel: UILabel = {
        let bl = UILabel()
        bl.text = "기주"
        bl.textColor = .black
        bl.font = UIFont.systemFont(ofSize: 17)
        return bl
    }()

    let baseButtonName = ["asd", "asdzxc", "asdqweqwe", "123sdasdzxc", "asdasfasd", "123asdaszxczxasd123"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configureUI()
        setBaseCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureUI() {
        self.addSubview(baseLabelView)
        baseLabelView.addSubview(baseLabel)
        self.addSubview(baseCollectionView)
        
        
        baseLabelView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.bottom.equalTo(baseCollectionView)
            make.width.equalTo(62)
        }
        
        baseLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        baseCollectionView.snp.makeConstraints { make in
            make.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.leading.equalTo(baseLabelView.snp.trailing)
        }
        
    }
    
    func setBaseCollectionView() {
        baseCollectionView.register(BaseCollectionViewCell.self, forCellWithReuseIdentifier: "BaseCell")
        baseCollectionView.delegate = self
        baseCollectionView.dataSource = self
    }
    
}

extension BaseView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return baseButtonName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = baseCollectionView.dequeueReusableCell(withReuseIdentifier: "BaseCell", for: indexPath) as! BaseCollectionViewCell
        cell.label.text = baseButtonName[indexPath.row]
        cell.layoutIfNeeded()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let baseButtonName = self.baseButtonName[indexPath.row]
        
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]
        
        let baseButtonNameSize = (baseButtonName as NSString).size(withAttributes: attributes as [NSAttributedString.Key: Any])
        
        return CGSize(width: baseButtonNameSize.width + 32, height: 30 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            15
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.pushToolModalVC()
    }
}

