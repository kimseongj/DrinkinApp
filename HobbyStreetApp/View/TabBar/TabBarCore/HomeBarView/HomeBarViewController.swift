//
//  HomeBarView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/02/07.
//

import UIKit

class HomeBarViewController: UIViewController {
    let homeBarLabel: UILabel = {
        let homeBarLabel = UILabel()
        homeBarLabel.font = UIFont.systemFont(ofSize: 28)
        return homeBarLabel
    }()
    
    let englishNameLabel: UILabel = {
        let englishNameLabel = UILabel()
        englishNameLabel.font = UIFont.systemFont(ofSize: 14)
        
        return englishNameLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
}
