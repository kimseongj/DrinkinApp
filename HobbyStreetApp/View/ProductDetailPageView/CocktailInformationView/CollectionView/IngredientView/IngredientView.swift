import UIKit
import SnapKit
import AlignedCollectionViewFlowLayout

class IngredientView: UIView {

    var ingredientLabelView: UIView = {
        let ilv = UIView()
        ilv.backgroundColor = .white
        return ilv
    }()
    
    var ingredientCollectionView: IngredientCollectionView = {
        let layout = UICollectionViewLayout()
        let bcv = IngredientCollectionView(frame: .zero, collectionViewLayout: AlignedCollectionViewFlowLayout(horizontalAlignment:  .left, verticalAlignment: .top))
        bcv.backgroundColor = .white
        bcv.layoutIfNeeded()
        return bcv
    }()
    
    let ingredientLabel: UILabel = {
        let bl = UILabel()
        bl.text = "재료"
        bl.textColor = .black
        bl.font = UIFont.systemFont(ofSize: 17)
        return bl
    }()

    let ingredientButtonName = ["asd", "asdzxc", "asdqweqwe", "123sdasdzxc", "asdasfasd", "123asdaszxczxasd123"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configureUI()
        setIngredientCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureUI() {
        self.addSubview(ingredientLabelView)
        ingredientLabelView.addSubview(ingredientLabel)
        self.addSubview(ingredientCollectionView)
        
        
        ingredientLabelView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.bottom.equalTo(ingredientCollectionView)
            make.width.equalTo(62)
        }
        
        ingredientLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        ingredientCollectionView.snp.makeConstraints { make in
            make.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.leading.equalTo(ingredientLabelView.snp.trailing)
        }
        
    }
    
    func setIngredientCollectionView() {
        ingredientCollectionView.register(IngredientCollectionViewCell.self, forCellWithReuseIdentifier: "IngredientCell")
        ingredientCollectionView.delegate = self
        ingredientCollectionView.dataSource = self
    }
    
}

extension IngredientView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredientButtonName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ingredientCollectionView.dequeueReusableCell(withReuseIdentifier: "IngredientCell", for: indexPath) as! IngredientCollectionViewCell
        cell.label.text = ingredientButtonName[indexPath.row]
        cell.layoutIfNeeded()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let ingredientButtonName = self.ingredientButtonName[indexPath.row]
        
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]
        
        let ingredientButtonNameSize = (ingredientButtonName as NSString).size(withAttributes: attributes as [NSAttributedString.Key: Any])
        
        return CGSize(width: ingredientButtonNameSize.width + 32, height: 30 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            15
        }
}

