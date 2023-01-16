import UIKit
import SnapKit
import AlignedCollectionViewFlowLayout

class ToolView: UIView {

    var toolLabelView: UIView = {
        let tlv = UIView()
        tlv.backgroundColor = .white
        return tlv
    }()
    
    var toolCollectionView: ToolCollectionView = {
        let layout = UICollectionViewLayout()
        let tcv = ToolCollectionView(frame: .zero, collectionViewLayout: AlignedCollectionViewFlowLayout(horizontalAlignment:  .left, verticalAlignment: .top))
        tcv.backgroundColor = .white
        tcv.layoutIfNeeded()
        return tcv
    }()
    
    let toolLabel: UILabel = {
        let bl = UILabel()
        bl.text = "도구"
        bl.textColor = .black
        bl.font = UIFont.systemFont(ofSize: 17)
        return bl
    }()

    let toolButtonName = ["asd", "asdzxc", "asdqweqwe", "123sdasdzxc"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configureUI()
        setToolCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureUI() {
        self.addSubview(toolLabelView)
        toolLabelView.addSubview(toolLabel)
        self.addSubview(toolCollectionView)
        
        
        toolLabelView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.bottom.equalTo(toolCollectionView)
            make.width.equalTo(62)
        }
        
        toolLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        toolCollectionView.snp.makeConstraints { make in
            make.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.leading.equalTo(toolLabelView.snp.trailing)
        }
        
    }
    
    func setToolCollectionView() {
        toolCollectionView.register(ToolCollectionViewCell.self, forCellWithReuseIdentifier: "ToolCell")
        toolCollectionView.delegate = self
        toolCollectionView.dataSource = self
    }
    
}

extension ToolView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return toolButtonName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = toolCollectionView.dequeueReusableCell(withReuseIdentifier: "ToolCell", for: indexPath) as! ToolCollectionViewCell
        cell.label.text = toolButtonName[indexPath.row]
        cell.layoutIfNeeded()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let toolButtonName = self.toolButtonName[indexPath.row]
        
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]
        
        let toolButtonNameSize = (toolButtonName as NSString).size(withAttributes: attributes as [NSAttributedString.Key: Any])
        
        return CGSize(width: toolButtonNameSize.width + 32, height: 30 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            15
        }
}

