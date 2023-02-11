//
//  preferBaseCollectionView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/11.
//

import UIKit

class PreferBaseCollectionView: UICollectionView {
    
    override var contentSize: CGSize {
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
