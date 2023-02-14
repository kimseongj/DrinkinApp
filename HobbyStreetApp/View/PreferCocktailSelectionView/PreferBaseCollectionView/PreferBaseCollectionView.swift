//
//  PreferBaseCollectionView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/13.
//

import UIKit

class PreferBaseCollectionView: UICollectionView {
    
    override var contentSize: CGSize{
        didSet {
            if oldValue.width != self.contentSize.width {
                invalidateIntrinsicContentSize()
            }
        }
    }
    
    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return contentSize
    }
}

