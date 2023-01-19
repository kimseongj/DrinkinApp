////
////  Tabbar.swift
////  HobbyStreetApp
////
////  Created by kimseongjun on 2023/01/03.
////


import UIKit

class TabbarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    class MainVC: UIViewController {
//        let homeScrollView = HomeScrollView()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
//            configureHomeScrollView()
        }
        
//        func configureHomeScrollView() {
//            view.addSubview(homeScrollView)
//            homeScrollView.snp.makeConstraints { make in
//                make.top.leading.trailing.bottom.equalToSuperview()
//
//            }
//        }
        
    }
    
    class CocktailVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemBlue
        }
    }
    
    class HomeBarVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemRed
        }
    }
        
    func setTabBar() {
        let mainTab = UINavigationController(rootViewController: MainVC())
        let mainTabBarItem = UITabBarItem(title: "메인", image: nil, tag: 0)
        mainTab.tabBarItem = mainTabBarItem
    
        let cocktailTab = UINavigationController(rootViewController: CocktailVC())
        let cocktailTabBarItem = UITabBarItem(title: "검색", image: nil, tag: 1)
        cocktailTab.tabBarItem = cocktailTabBarItem
        
        let homeBarTab = UINavigationController(rootViewController: HomeBarVC())
        let homeTabBarItem = UITabBarItem(title: "프로필", image: nil, tag: 2)
        homeBarTab.tabBarItem = homeTabBarItem
        
        self.viewControllers = [mainTab, cocktailTab, homeBarTab]
        self.tabBar.backgroundColor = .lightGray
    }
    
    
}
