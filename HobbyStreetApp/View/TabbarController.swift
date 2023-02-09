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
    
//    class MainVC: UIViewController {
//        let homeView = HomeView()
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            view.backgroundColor = .white
//            configureHomeView()
//        }
//
//        func configureHomeView() {
//            view.addSubview(homeView)
//
//            homeView.snp.makeConstraints { make in
//                make.top.bottom.leading.trailing.equalToSuperview()
//            }
//        }
//
//    }
    func setTabBar() {
        let mainTabBarItem = UITabBarItem(title: "메인", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        let cocktailTabBarItem = UITabBarItem(title: "칵테일", image: UIImage(systemName: "multiply"), selectedImage: UIImage(systemName: "house.fill"))
        let homeBarTabBarItem = UITabBarItem(title: "나의 홈바", image: UIImage(systemName: "multiply"), selectedImage: UIImage(systemName: "house.fill"))
        
        let mainVCCoordinator = MainVCCoordinator()
        let mainViewController = mainVCCoordinator.startPush()
        mainViewController.tabBarItem = mainTabBarItem
        
        let cocktailVCCoordinator = CocktailVCCoordinator()
        let cocktailViewController = cocktailVCCoordinator.startPush()
        cocktailViewController.tabBarItem = cocktailTabBarItem
        
        let homeBarVCCoordinator = HomeBarVCCoordinator()
        let homeBarViewController = homeBarVCCoordinator.startPush()
        homeBarViewController.tabBarItem = homeBarTabBarItem
        
        self.viewControllers = [mainViewController, cocktailViewController, homeBarViewController]
    }
}
