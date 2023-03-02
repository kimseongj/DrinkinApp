//
//  ModalView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/13.
//

import UIKit

class ToolModalViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
}
