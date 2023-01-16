import UIKit

class SkillCollectionView: UICollectionView {
    
    override var contentSize: CGSize{
        didSet {
            if oldValue.height != self.contentSize.height {
                invalidateIntrinsicContentSize()
            }
        }
    }
    
    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return contentSize
    }
    
}
